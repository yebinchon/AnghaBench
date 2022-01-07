
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_SetRespStatus_r (int *,int) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_SetRespStatus( int code )
{ return LSAPI_SetRespStatus_r( &g_req, code ); }
