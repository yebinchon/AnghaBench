
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LSAPI_CB_EnvHandler ;


 int LSAPI_ForeachHeader_r (int *,int ,void*) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_ForeachHeader( LSAPI_CB_EnvHandler fn, void * arg )
{ return LSAPI_ForeachHeader_r( &g_req, fn, arg ); }
