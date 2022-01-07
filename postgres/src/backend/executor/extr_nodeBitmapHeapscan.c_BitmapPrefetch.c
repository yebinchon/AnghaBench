
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_3__* TableScanDesc ;
struct TYPE_12__ {int ss_currentRelation; } ;
struct TYPE_16__ {scalar_t__ prefetch_pages; scalar_t__ prefetch_target; int pvmbuffer; TYPE_2__ ss; TYPE_1__* tbmres; scalar_t__ can_skip_fetch; int * shared_prefetch_iterator; int * prefetch_iterator; TYPE_5__* pstate; } ;
struct TYPE_15__ {scalar_t__ prefetch_pages; scalar_t__ prefetch_target; int mutex; } ;
struct TYPE_14__ {int blockno; } ;
struct TYPE_13__ {int rs_rd; } ;
struct TYPE_11__ {int recheck; } ;
typedef int TBMSharedIterator ;
typedef int TBMIterator ;
typedef TYPE_4__ TBMIterateResult ;
typedef TYPE_5__ ParallelBitmapHeapState ;
typedef TYPE_6__ BitmapHeapScanState ;


 int MAIN_FORKNUM ;
 int PrefetchBuffer (int ,int ,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ VM_ALL_VISIBLE (int ,int ,int *) ;
 int tbm_end_iterate (int *) ;
 int tbm_end_shared_iterate (int *) ;
 TYPE_4__* tbm_iterate (int *) ;
 TYPE_4__* tbm_shared_iterate (int *) ;

__attribute__((used)) static inline void
BitmapPrefetch(BitmapHeapScanState *node, TableScanDesc scan)
{
}
