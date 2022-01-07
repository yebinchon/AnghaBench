
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LSAPI_GetRequestMethod_r (int *) ;
 int g_req ;

__attribute__((used)) static inline char * LSAPI_GetRequestMethod(void)
{ return LSAPI_GetRequestMethod_r( &g_req ); }
