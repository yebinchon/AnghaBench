
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int * curTransactionOwner; TYPE_1__* parent; int subTransactionId; } ;
struct TYPE_4__ {int curTransactionOwner; } ;


 int AtSubCleanup_Memory () ;
 int AtSubCleanup_Portals (int ) ;
 int CurTransactionResourceOwner ;
 int CurrentResourceOwner ;
 TYPE_2__* CurrentTransactionState ;
 int PopTransaction () ;
 int ResourceOwnerDelete (int *) ;
 int ShowTransactionState (char*) ;
 scalar_t__ TRANS_ABORT ;
 scalar_t__ TRANS_DEFAULT ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
CleanupSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;

 ShowTransactionState("CleanupSubTransaction");

 if (s->state != TRANS_ABORT)
  elog(WARNING, "CleanupSubTransaction while in %s state",
    TransStateAsString(s->state));

 AtSubCleanup_Portals(s->subTransactionId);

 CurrentResourceOwner = s->parent->curTransactionOwner;
 CurTransactionResourceOwner = s->parent->curTransactionOwner;
 if (s->curTransactionOwner)
  ResourceOwnerDelete(s->curTransactionOwner);
 s->curTransactionOwner = ((void*)0);

 AtSubCleanup_Memory();

 s->state = TRANS_DEFAULT;

 PopTransaction();
}
