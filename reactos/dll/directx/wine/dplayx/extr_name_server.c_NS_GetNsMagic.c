
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int * LPDWORD ;
typedef int DWORD ;


 int * NS_GetNSAddr (int ) ;

DWORD NS_GetNsMagic( LPVOID lpNSInfo )
{
  LPDWORD lpHdrInfo = NS_GetNSAddr( lpNSInfo );

  return lpHdrInfo[1];
}
