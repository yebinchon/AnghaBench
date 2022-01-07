
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* lpNSCache ;
struct TYPE_2__ {int bNsIsLocal; } ;
typedef int LPVOID ;
typedef int LPCDPSESSIONDESC2 ;


 int TRUE ;

void NS_SetLocalComputerAsNameServer( LPCDPSESSIONDESC2 lpsd, LPVOID lpNSInfo )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  lpCache->bNsIsLocal = TRUE;
}
