
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *
basename(char *filename)
{
    char *p = strrchr(filename, '/');
    if (!p)
    {

        p = strrchr(filename, '\\');
    }
    return p ? p + 1 : (char *) filename;
}
