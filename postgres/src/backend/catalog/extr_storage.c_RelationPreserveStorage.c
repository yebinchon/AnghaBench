
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int atCommit; struct TYPE_4__* next; int relnode; } ;
typedef int RelFileNode ;
typedef TYPE_1__ PendingRelDelete ;


 scalar_t__ RelFileNodeEquals (int ,int ) ;
 TYPE_1__* pendingDeletes ;
 int pfree (TYPE_1__*) ;

void
RelationPreserveStorage(RelFileNode rnode, bool atCommit)
{
 PendingRelDelete *pending;
 PendingRelDelete *prev;
 PendingRelDelete *next;

 prev = ((void*)0);
 for (pending = pendingDeletes; pending != ((void*)0); pending = next)
 {
  next = pending->next;
  if (RelFileNodeEquals(rnode, pending->relnode)
   && pending->atCommit == atCommit)
  {

   if (prev)
    prev->next = next;
   else
    pendingDeletes = next;
   pfree(pending);

  }
  else
  {

   prev = pending;
  }
 }
}
