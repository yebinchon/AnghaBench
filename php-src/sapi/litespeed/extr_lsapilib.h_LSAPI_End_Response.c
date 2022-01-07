
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_End_Response_r (int *) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_End_Response(void)
{ return LSAPI_End_Response_r( &g_req ); }
