
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int atCommit; struct TYPE_7__* next; int nestLevel; int backend; int relnode; } ;
struct TYPE_6__ {int rd_backend; int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__ PendingRelDelete ;


 int GetCurrentTransactionNestLevel () ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int RelationCloseSmgr (TYPE_1__*) ;
 int TopMemoryContext ;
 TYPE_2__* pendingDeletes ;

void
RelationDropStorage(Relation rel)
{
 PendingRelDelete *pending;


 pending = (PendingRelDelete *)
  MemoryContextAlloc(TopMemoryContext, sizeof(PendingRelDelete));
 pending->relnode = rel->rd_node;
 pending->backend = rel->rd_backend;
 pending->atCommit = 1;
 pending->nestLevel = GetCurrentTransactionNestLevel();
 pending->next = pendingDeletes;
 pendingDeletes = pending;
 RelationCloseSmgr(rel);
}
