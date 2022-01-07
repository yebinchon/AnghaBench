
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int LSAPI_ReadReqBody_r (int *,char*,size_t) ;
 int g_req ;

__attribute__((used)) static inline ssize_t LSAPI_ReadReqBody( char * pBuf, size_t len )
{ return LSAPI_ReadReqBody_r( &g_req, pBuf, len ); }
