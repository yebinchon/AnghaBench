
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nestLevel; int atCommit; scalar_t__ backend; int relnode; struct TYPE_3__* next; } ;
typedef int RelFileNode ;
typedef TYPE_1__ PendingRelDelete ;


 int GetCurrentTransactionNestLevel () ;
 scalar_t__ InvalidBackendId ;
 scalar_t__ palloc (int) ;
 TYPE_1__* pendingDeletes ;

int
smgrGetPendingDeletes(bool forCommit, RelFileNode **ptr)
{
 int nestLevel = GetCurrentTransactionNestLevel();
 int nrels;
 RelFileNode *rptr;
 PendingRelDelete *pending;

 nrels = 0;
 for (pending = pendingDeletes; pending != ((void*)0); pending = pending->next)
 {
  if (pending->nestLevel >= nestLevel && pending->atCommit == forCommit
   && pending->backend == InvalidBackendId)
   nrels++;
 }
 if (nrels == 0)
 {
  *ptr = ((void*)0);
  return 0;
 }
 rptr = (RelFileNode *) palloc(nrels * sizeof(RelFileNode));
 *ptr = rptr;
 for (pending = pendingDeletes; pending != ((void*)0); pending = pending->next)
 {
  if (pending->nestLevel >= nestLevel && pending->atCommit == forCommit
   && pending->backend == InvalidBackendId)
  {
   *rptr = pending->relnode;
   rptr++;
  }
 }
 return nrels;
}
