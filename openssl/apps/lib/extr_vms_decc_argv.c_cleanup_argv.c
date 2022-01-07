
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (int *) ;
 int * newargv ;

__attribute__((used)) static void cleanup_argv(void)
{
    OPENSSL_free(newargv);
    newargv = ((void*)0);
}
