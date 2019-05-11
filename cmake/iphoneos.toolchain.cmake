set(CMAKE_SYSTEM_NAME Darwin)
set(SDK iphoneos CACHE STRING "")
set(CMAKE_OSX_ARCHITECTURES armv7 armv7s arm64 CACHE STRING "")

execute_process(COMMAND xcrun --sdk ${SDK} --find clang
                OUTPUT_VARIABLE CMAKE_C_COMPILER
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_C_COMPILER ${CMAKE_C_COMPILER} CACHE PATH "clang executable")

execute_process(COMMAND xcrun --sdk ${SDK} --find clang++
                OUTPUT_VARIABLE CMAKE_CXX_COMPILER
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_CXX_COMPILER ${CMAKE_CXX_COMPILER} CACHE PATH "clang++ executable")

execute_process(COMMAND xcrun --sdk ${SDK} --find swiftc
                OUTPUT_VARIABLE CMAKE_Swift_COMPILER
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_Swift_COMPILER ${CMAKE_Swift_COMPILER} CACHE PATH "swiftc executable")

execute_process(COMMAND xcrun --sdk ${SDK} --find libtool
                OUTPUT_VARIABLE CMAKE_LIBTOOL
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_LIBTOOL ${CMAKE_LIBTOOL} CACHE PATH "libtool executable")

execute_process(COMMAND xcrun --sdk ${SDK} --find strip
                OUTPUT_VARIABLE CMAKE_STRIP
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_STRIP ${CMAKE_STRIP} CACHE PATH "strip executable")

execute_process(COMMAND xcrun --sdk ${SDK} --show-sdk-path
                OUTPUT_VARIABLE CMAKE_OSX_SYSROOT
                OUTPUT_STRIP_TRAILING_WHITESPACE)
set(CMAKE_OSX_SYSROOT ${CMAKE_OSX_SYSROOT} CACHE PATH "sysroot")

set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_Swift_COMPILER_WORKS TRUE)

set(CMAKE_FIND_FRAMEWORK FIRST)
set(CMAKE_SYSTEM_FRAMEWORK_PATH ${CMAKE_OSX_SYSROOT}/System/Library/Frameworks)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
