
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_onexit ;
 int exit (int) ;
 int lsapi_clean_shutdown () ;

__attribute__((used)) static void lsapi_sigterm(int signal)
{


    if(!clean_onexit)
    {
        lsapi_clean_shutdown();
    }
    exit(1);
}
