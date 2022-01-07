
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ PendingRelDelete ;


 TYPE_1__* pendingDeletes ;
 int pfree (TYPE_1__*) ;

void
PostPrepare_smgr(void)
{
 PendingRelDelete *pending;
 PendingRelDelete *next;

 for (pending = pendingDeletes; pending != ((void*)0); pending = next)
 {
  next = pending->next;
  pendingDeletes = next;

  pfree(pending);
 }
}
