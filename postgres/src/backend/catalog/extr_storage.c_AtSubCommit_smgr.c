
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nestLevel; struct TYPE_3__* next; } ;
typedef TYPE_1__ PendingRelDelete ;


 int GetCurrentTransactionNestLevel () ;
 TYPE_1__* pendingDeletes ;

void
AtSubCommit_smgr(void)
{
 int nestLevel = GetCurrentTransactionNestLevel();
 PendingRelDelete *pending;

 for (pending = pendingDeletes; pending != ((void*)0); pending = pending->next)
 {
  if (pending->nestLevel >= nestLevel)
   pending->nestLevel = nestLevel - 1;
 }
}
