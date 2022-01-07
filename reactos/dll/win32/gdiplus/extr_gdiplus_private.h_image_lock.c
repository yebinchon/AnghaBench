
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busy; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ GpImage ;
typedef int BOOL ;


 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ InterlockedCompareExchange (int *,scalar_t__,int ) ;

__attribute__((used)) static inline BOOL image_lock(GpImage *image, BOOL *unlock)
{
    LONG tid = GetCurrentThreadId(), owner_tid;
    owner_tid = InterlockedCompareExchange(&image->busy, tid, 0);
    *unlock = !owner_tid;
    return !owner_tid || owner_tid==tid;
}
