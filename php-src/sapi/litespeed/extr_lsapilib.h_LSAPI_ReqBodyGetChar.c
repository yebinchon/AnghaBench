
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_ReqBodyGetChar_r (int *) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_ReqBodyGetChar(void)
{ return LSAPI_ReqBodyGetChar_r( &g_req ); }
