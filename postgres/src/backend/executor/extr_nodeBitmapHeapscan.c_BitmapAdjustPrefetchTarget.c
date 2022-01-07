
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prefetch_target; int prefetch_maximum; TYPE_1__* pstate; } ;
struct TYPE_4__ {int prefetch_target; int mutex; } ;
typedef TYPE_1__ ParallelBitmapHeapState ;
typedef TYPE_2__ BitmapHeapScanState ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static inline void
BitmapAdjustPrefetchTarget(BitmapHeapScanState *node)
{
}
