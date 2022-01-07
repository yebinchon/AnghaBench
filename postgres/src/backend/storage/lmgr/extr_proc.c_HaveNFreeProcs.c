
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* freeProcs; } ;
struct TYPE_4__ {scalar_t__ next; } ;
struct TYPE_5__ {TYPE_1__ links; } ;
typedef TYPE_2__ PGPROC ;


 TYPE_3__* ProcGlobal ;
 int ProcStructLock ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;

bool
HaveNFreeProcs(int n)
{
 PGPROC *proc;

 SpinLockAcquire(ProcStructLock);

 proc = ProcGlobal->freeProcs;

 while (n > 0 && proc != ((void*)0))
 {
  proc = (PGPROC *) proc->links.next;
  n--;
 }

 SpinLockRelease(ProcStructLock);

 return (n <= 0);
}
