
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int LSAPI_Write_Stderr_r (int *,char const*,int ) ;
 int g_req ;

__attribute__((used)) static inline ssize_t LSAPI_Write_Stderr( const char * pBuf, ssize_t len )
{ return LSAPI_Write_Stderr_r( &g_req, pBuf, len ); }
