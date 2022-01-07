
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_AppendRespHeader_r (int *,char*,int) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_AppendRespHeader( char * pBuf, int len )
{ return LSAPI_AppendRespHeader_r( &g_req, pBuf, len ); }
