
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_atexit (int (*) ()) ;
 char** app_malloc (int,char*) ;
 int cleanup_argv () ;
 char** newargv ;

char **copy_argv(int *argc, char *argv[])
{
    int i, count = *argc;
    char **p = newargv;

    cleanup_argv();

    newargv = app_malloc(sizeof(*newargv) * (count + 1), "argv copy");
    if (newargv == ((void*)0))
        return ((void*)0);


    if (p == ((void*)0))
        OPENSSL_atexit(cleanup_argv);

    for (i = 0; i < count; i++)
        newargv[i] = argv[i];
    newargv[i] = ((void*)0);
    *argc = i;
    return newargv;
}
