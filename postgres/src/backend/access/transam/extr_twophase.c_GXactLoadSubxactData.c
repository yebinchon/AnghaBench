
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_11__ {TYPE_2__* allPgXact; TYPE_3__* allProcs; } ;
struct TYPE_10__ {size_t pgprocno; } ;
struct TYPE_7__ {int xids; } ;
struct TYPE_9__ {TYPE_1__ subxids; } ;
struct TYPE_8__ {int overflowed; int nxids; } ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;
typedef TYPE_4__* GlobalTransaction ;


 int PGPROC_MAX_CACHED_SUBXIDS ;
 TYPE_5__* ProcGlobal ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
GXactLoadSubxactData(GlobalTransaction gxact, int nsubxacts,
      TransactionId *children)
{
 PGPROC *proc = &ProcGlobal->allProcs[gxact->pgprocno];
 PGXACT *pgxact = &ProcGlobal->allPgXact[gxact->pgprocno];


 if (nsubxacts > PGPROC_MAX_CACHED_SUBXIDS)
 {
  pgxact->overflowed = 1;
  nsubxacts = PGPROC_MAX_CACHED_SUBXIDS;
 }
 if (nsubxacts > 0)
 {
  memcpy(proc->subxids.xids, children,
      nsubxacts * sizeof(TransactionId));
  pgxact->nxids = nsubxacts;
 }
}
