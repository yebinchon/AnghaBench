
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* lpNSCache ;
struct TYPE_2__ {int bNsIsLocal; int * present; int first; } ;
typedef int LPVOID ;


 int DPQ_DELETEQ (int ,int ,int ,int ) ;
 int ERR (char*) ;
 int FALSE ;
 int cbDeleteNSNodeFromHeap ;
 int lpNSCacheData ;
 int next ;

void NS_InvalidateSessionCache( LPVOID lpNSInfo )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  if( lpCache == ((void*)0) )
  {
    ERR( ": invalidate nonexistent cache\n" );
    return;
  }

  DPQ_DELETEQ( lpCache->first, next, lpNSCacheData, cbDeleteNSNodeFromHeap );


  lpCache->present = ((void*)0);

  lpCache->bNsIsLocal = FALSE;

}
