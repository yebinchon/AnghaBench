
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_onexit ;
 int lsapi_clean_shutdown () ;

__attribute__((used)) static void lsapi_atexit(void)
{

    if(!clean_onexit)
    {
        lsapi_clean_shutdown();
    }
}
