
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_COOKIE ;
 char* LSAPI_GetHeader (int ) ;
 scalar_t__ lsapi_mode ;

__attribute__((used)) static char *sapi_lsapi_read_cookies(void)
{
    if ( lsapi_mode ) {
        return LSAPI_GetHeader( H_COOKIE );
    } else {
        return ((void*)0);
    }
}
