
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * allProcs; } ;
struct TYPE_4__ {int valid; size_t pgprocno; } ;
typedef TYPE_1__* GlobalTransaction ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayAdd (int *) ;
 TYPE_2__* ProcGlobal ;
 int TwoPhaseStateLock ;

__attribute__((used)) static void
MarkAsPrepared(GlobalTransaction gxact, bool lock_held)
{

 if (!lock_held)
  LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 Assert(!gxact->valid);
 gxact->valid = 1;
 if (!lock_held)
  LWLockRelease(TwoPhaseStateLock);





 ProcArrayAdd(&ProcGlobal->allProcs[gxact->pgprocno]);
}
