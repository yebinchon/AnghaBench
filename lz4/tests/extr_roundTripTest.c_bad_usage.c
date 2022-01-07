
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG (char*,...) ;

int bad_usage(const char* exeName)
{
    MSG(" \n");
    MSG("bad usage: \n");
    MSG(" \n");
    MSG("%s [Options] fileName \n", exeName);
    MSG(" \n");
    MSG("Options: \n");
    MSG("-#     : use #=[0-9] compression level (default:0 == random) \n");
    return 1;
}
