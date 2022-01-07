
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_ErrResponse_r (int *,int,char const**,char const*,int) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_ErrResponse( int code, const char ** pRespHeaders, const char * pBody, int bodyLen )
{ return LSAPI_ErrResponse_r( &g_req, code, pRespHeaders, pBody, bodyLen ); }
