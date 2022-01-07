
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_ReqBodyGetLine_r (int *,char*,int,int*) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_ReqBodyGetLine( char * pBuf, int len, int *getLF )
{ return LSAPI_ReqBodyGetLine_r( &g_req, pBuf, len, getLF ); }
