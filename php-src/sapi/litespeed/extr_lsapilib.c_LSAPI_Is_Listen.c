
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_Is_Listen_r (int *) ;
 int g_req ;

int LSAPI_Is_Listen( void )
{
    return LSAPI_Is_Listen_r( &g_req );
}
