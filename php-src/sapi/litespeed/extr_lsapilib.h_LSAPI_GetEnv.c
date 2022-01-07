
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LSAPI_GetEnv_r (int *,char const*) ;
 int g_req ;

__attribute__((used)) static inline char * LSAPI_GetEnv( const char * name )
{ return LSAPI_GetEnv_r( &g_req, name ); }
