
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_Accept_r (int *) ;
 int g_req ;

__attribute__((used)) static inline int LSAPI_Accept( void )
{ return LSAPI_Accept_r( &g_req ); }
