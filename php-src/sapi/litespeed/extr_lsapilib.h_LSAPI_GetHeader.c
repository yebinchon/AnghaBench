
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LSAPI_GetHeader_r (int *,int) ;
 int g_req ;

__attribute__((used)) static inline char * LSAPI_GetHeader( int headerIndex )
{ return LSAPI_GetHeader_r( &g_req, headerIndex ); }
