
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LSAPI_GetEnv (char*) ;
 char* getenv (char*) ;
 scalar_t__ lsapi_mode ;

__attribute__((used)) static char *sapi_lsapi_getenv( char * name, size_t name_len )
{
    if ( lsapi_mode ) {
        return LSAPI_GetEnv( name );
    } else {
        return getenv( name );
    }
}
