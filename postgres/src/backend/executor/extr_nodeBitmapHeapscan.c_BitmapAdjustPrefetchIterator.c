
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ prefetch_pages; scalar_t__ prefetch_maximum; int * shared_prefetch_iterator; int * prefetch_iterator; TYPE_2__* pstate; } ;
struct TYPE_8__ {scalar_t__ prefetch_pages; int mutex; } ;
struct TYPE_7__ {scalar_t__ blockno; } ;
typedef int TBMSharedIterator ;
typedef int TBMIterator ;
typedef TYPE_1__ TBMIterateResult ;
typedef TYPE_2__ ParallelBitmapHeapState ;
typedef TYPE_3__ BitmapHeapScanState ;


 int ERROR ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int elog (int ,char*) ;
 TYPE_1__* tbm_iterate (int *) ;
 int tbm_shared_iterate (int *) ;

__attribute__((used)) static inline void
BitmapAdjustPrefetchIterator(BitmapHeapScanState *node,
        TBMIterateResult *tbmres)
{
}
