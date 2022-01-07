
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,...) ;
 int LZ4_EXTENSION ;
 int stdinmark ;

__attribute__((used)) static int usage(const char* exeName)
{
    DISPLAY( "Usage : \n");
    DISPLAY( "      %s [arg] [input] [output] \n", exeName);
    DISPLAY( "\n");
    DISPLAY( "input   : a filename \n");
    DISPLAY( "          with no FILE, or when FILE is - or %s, read standard input\n", stdinmark);
    DISPLAY( "Arguments : \n");
    DISPLAY( " -1     : Fast compression (default) \n");
    DISPLAY( " -9     : High compression \n");
    DISPLAY( " -d     : decompression (default for %s extension)\n", LZ4_EXTENSION);
    DISPLAY( " -z     : force compression \n");
    DISPLAY( " -D FILE: use FILE as dictionary \n");
    DISPLAY( " -f     : overwrite output without prompting \n");
    DISPLAY( " -k     : preserve source files(s)  (default) \n");
    DISPLAY( "--rm    : remove source file(s) after successful de/compression \n");
    DISPLAY( " -h/-H  : display help/long help and exit \n");
    return 0;
}
