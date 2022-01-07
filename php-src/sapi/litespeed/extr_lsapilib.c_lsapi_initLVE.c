
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atol (char const*) ;
 char* getenv (char*) ;
 int init_lve_ex () ;
 int lsapi_load_lve_lib () ;
 scalar_t__ s_enable_lve ;
 int s_uid ;

__attribute__((used)) static int lsapi_initLVE(void)
{
    const char * pEnv;
    if ( (pEnv = getenv( "LSAPI_LVE_ENABLE" ))!= ((void*)0) )
    {
        s_enable_lve = atol( pEnv );
        pEnv = ((void*)0);
    }
    else if ( (pEnv = getenv( "LVE_ENABLE" ))!= ((void*)0) )
    {
        s_enable_lve = atol( pEnv );
        pEnv = ((void*)0);
    }
    if ( s_enable_lve && !s_uid )
    {
        lsapi_load_lve_lib();
        if ( s_enable_lve )
        {
            return init_lve_ex();
        }

    }
    return 0;
}
