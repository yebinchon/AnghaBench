
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int LSAPI_GetReqBodyRemain_r (int *) ;
 int g_req ;

__attribute__((used)) static inline off_t LSAPI_GetReqBodyRemain(void)
{ return LSAPI_GetReqBodyRemain_r( &g_req ); }
