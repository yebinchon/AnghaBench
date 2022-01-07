
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int atCommit; struct TYPE_10__* next; int nestLevel; int backend; int relnode; } ;
struct TYPE_8__ {int node; } ;
struct TYPE_9__ {TYPE_1__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef int RelFileNode ;
typedef TYPE_3__ PendingRelDelete ;
typedef int BackendId ;


 int BackendIdForTempRelations () ;
 int ERROR ;
 int GetCurrentTransactionNestLevel () ;
 int InvalidBackendId ;
 int MAIN_FORKNUM ;
 scalar_t__ MemoryContextAlloc (int ,int) ;



 int TopMemoryContext ;
 int elog (int ,char*,char) ;
 int log_smgrcreate (int *,int ) ;
 TYPE_3__* pendingDeletes ;
 int smgrcreate (TYPE_2__*,int ,int) ;
 TYPE_2__* smgropen (int ,int ) ;

SMgrRelation
RelationCreateStorage(RelFileNode rnode, char relpersistence)
{
 PendingRelDelete *pending;
 SMgrRelation srel;
 BackendId backend;
 bool needs_wal;

 switch (relpersistence)
 {
  case 129:
   backend = BackendIdForTempRelations();
   needs_wal = 0;
   break;
  case 128:
   backend = InvalidBackendId;
   needs_wal = 0;
   break;
  case 130:
   backend = InvalidBackendId;
   needs_wal = 1;
   break;
  default:
   elog(ERROR, "invalid relpersistence: %c", relpersistence);
   return ((void*)0);
 }

 srel = smgropen(rnode, backend);
 smgrcreate(srel, MAIN_FORKNUM, 0);

 if (needs_wal)
  log_smgrcreate(&srel->smgr_rnode.node, MAIN_FORKNUM);


 pending = (PendingRelDelete *)
  MemoryContextAlloc(TopMemoryContext, sizeof(PendingRelDelete));
 pending->relnode = rnode;
 pending->backend = backend;
 pending->atCommit = 0;
 pending->nestLevel = GetCurrentTransactionNestLevel();
 pending->next = pendingDeletes;
 pendingDeletes = pending;

 return srel;
}
