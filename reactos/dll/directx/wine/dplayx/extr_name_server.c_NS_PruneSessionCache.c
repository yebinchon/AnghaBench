
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* lpNSCacheData ;
typedef TYPE_2__* lpNSCache ;
struct TYPE_9__ {int first; } ;
struct TYPE_8__ {scalar_t__ const dwTime; } ;
typedef TYPE_2__* LPVOID ;
typedef scalar_t__ DWORD ;


 scalar_t__ DPMSG_WAIT_60_SECS ;
 TYPE_1__* DPQ_FIRST (int ) ;
 scalar_t__ DPQ_IS_EMPTY (int ) ;
 int DPQ_REMOVE (int ,TYPE_1__*,int ) ;
 int cbDeleteNSNodeFromHeap (TYPE_1__*) ;
 int next ;
 scalar_t__ timeGetTime () ;

void NS_PruneSessionCache( LPVOID lpNSInfo )
{
  lpNSCache lpCache = lpNSInfo;

  const DWORD dwPresentTime = timeGetTime();
  const DWORD dwPrunePeriod = DPMSG_WAIT_60_SECS;







  for( ;; )
  {
    lpNSCacheData lpFirstData;

    if( DPQ_IS_EMPTY(lpCache->first) )
    {

      break;
    }



    if( (dwPresentTime - (DPQ_FIRST(lpCache->first)->dwTime)) < dwPrunePeriod )
    {

      break;
    }

    lpFirstData = DPQ_FIRST(lpCache->first);
    DPQ_REMOVE( lpCache->first, DPQ_FIRST(lpCache->first), next );
    cbDeleteNSNodeFromHeap( lpFirstData );
  }

}
