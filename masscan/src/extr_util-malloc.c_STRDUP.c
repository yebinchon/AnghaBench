
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _strdup (char const*) ;
 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* strdup (char const*) ;

char *
STRDUP(const char *str)
{



    char *p = strdup(str);


    if (p == ((void*)0) && str != ((void*)0)) {
        fprintf(stderr, "[-] out of memory, aborting\n");
        abort();
    }

    return p;
}
