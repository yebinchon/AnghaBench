
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {int * allProcs; } ;
struct TYPE_4__ {size_t pgprocno; } ;
typedef int PGPROC ;
typedef TYPE_1__* GlobalTransaction ;


 TYPE_3__* ProcGlobal ;
 TYPE_1__* TwoPhaseGetGXact (int ,int) ;

PGPROC *
TwoPhaseGetDummyProc(TransactionId xid, bool lock_held)
{
 GlobalTransaction gxact = TwoPhaseGetGXact(xid, lock_held);

 return &ProcGlobal->allProcs[gxact->pgprocno];
}
