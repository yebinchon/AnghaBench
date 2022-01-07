
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int nestLevel; int atCommit; int backend; int relnode; struct TYPE_11__* next; } ;
typedef TYPE_1__ SMgrRelation ;
typedef TYPE_1__ PendingRelDelete ;


 int GetCurrentTransactionNestLevel () ;
 TYPE_1__* palloc (int) ;
 TYPE_1__* pendingDeletes ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* repalloc (TYPE_1__*,int) ;
 int smgrclose (TYPE_1__) ;
 int smgrdounlinkall (TYPE_1__*,int,int) ;
 TYPE_1__ smgropen (int ,int ) ;

void
smgrDoPendingDeletes(bool isCommit)
{
 int nestLevel = GetCurrentTransactionNestLevel();
 PendingRelDelete *pending;
 PendingRelDelete *prev;
 PendingRelDelete *next;
 int nrels = 0,
    i = 0,
    maxrels = 0;
 SMgrRelation *srels = ((void*)0);

 prev = ((void*)0);
 for (pending = pendingDeletes; pending != ((void*)0); pending = next)
 {
  next = pending->next;
  if (pending->nestLevel < nestLevel)
  {

   prev = pending;
  }
  else
  {

   if (prev)
    prev->next = next;
   else
    pendingDeletes = next;

   if (pending->atCommit == isCommit)
   {
    SMgrRelation srel;

    srel = smgropen(pending->relnode, pending->backend);


    if (maxrels == 0)
    {
     maxrels = 8;
     srels = palloc(sizeof(SMgrRelation) * maxrels);
    }
    else if (maxrels <= nrels)
    {
     maxrels *= 2;
     srels = repalloc(srels, sizeof(SMgrRelation) * maxrels);
    }

    srels[nrels++] = srel;
   }

   pfree(pending);

  }
 }

 if (nrels > 0)
 {
  smgrdounlinkall(srels, nrels, 0);

  for (i = 0; i < nrels; i++)
   smgrclose(srels[i]);

  pfree(srels);
 }
}
