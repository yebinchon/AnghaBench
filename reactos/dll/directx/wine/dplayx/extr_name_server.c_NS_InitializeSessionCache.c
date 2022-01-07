
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* lpNSCache ;
struct TYPE_5__ {int bNsIsLocal; int * present; int first; } ;
typedef TYPE_1__* LPVOID ;
typedef int BOOL ;


 int DPQ_INIT (int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRUE ;

BOOL NS_InitializeSessionCache( LPVOID* lplpNSInfo )
{
  lpNSCache lpCache = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof( *lpCache ) );

  *lplpNSInfo = lpCache;

  if( lpCache == ((void*)0) )
  {
    return FALSE;
  }

  DPQ_INIT(lpCache->first);
  lpCache->present = ((void*)0);

  lpCache->bNsIsLocal = FALSE;

  return TRUE;
}
