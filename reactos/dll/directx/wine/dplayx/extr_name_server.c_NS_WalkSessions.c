
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_3__* lpNSCache ;
struct TYPE_6__ {TYPE_2__* present; } ;
struct TYPE_4__ {TYPE_2__* lpQNext; } ;
struct TYPE_5__ {TYPE_1__ next; int * data; } ;
typedef int LPVOID ;
typedef int * LPDPSESSIONDESC2 ;



LPDPSESSIONDESC2 NS_WalkSessions( LPVOID lpNSInfo )
{
  LPDPSESSIONDESC2 lpSessionDesc;
  lpNSCache lpCache = (lpNSCache)lpNSInfo;




  if( lpCache->present == ((void*)0) )
  {
    return ((void*)0);
  }

  lpSessionDesc = lpCache->present->data;


  lpCache->present = lpCache->present->next.lpQNext;

  return lpSessionDesc;
}
