
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {int blockState; TYPE_1__* parent; int curTransactionOwner; int subTransactionId; int state; } ;
struct TYPE_4__ {int curTransactionOwner; int subTransactionId; } ;


 int AbortSubTransaction () ;
 int AbortTransaction () ;
 int Assert (int ) ;
 int AtAbort_Memory () ;
 int AtAbort_Portals () ;
 int AtCleanup_Memory () ;
 int AtSubAbort_Portals (int ,int ,int ,int ) ;
 int CleanupSubTransaction () ;
 int CleanupTransaction () ;
 TYPE_2__* CurrentTransactionState ;
 int TRANS_DEFAULT ;
 int TRANS_INPROGRESS ;
 int TRANS_START ;

void
AbortOutOfAnyTransaction(void)
{
 TransactionState s = CurrentTransactionState;


 AtAbort_Memory();




 do
 {
  switch (s->blockState)
  {
   case 143:
    if (s->state == TRANS_DEFAULT)
    {

    }
    else
    {







     if (s->state == TRANS_START)
      s->state = TRANS_INPROGRESS;
     AbortTransaction();
     CleanupTransaction();
    }
    break;
   case 137:
   case 144:
   case 140:
   case 141:
   case 139:
   case 142:
   case 145:
   case 138:

    AbortTransaction();
    CleanupTransaction();
    s->blockState = 143;
    break;
   case 147:
   case 146:







    AtAbort_Portals();
    CleanupTransaction();
    s->blockState = 143;
    break;




   case 132:
   case 130:
   case 129:
   case 131:
   case 134:
   case 128:
    AbortSubTransaction();
    CleanupSubTransaction();
    s = CurrentTransactionState;
    break;

   case 136:
   case 135:
   case 133:

    if (s->curTransactionOwner)
    {

     AtSubAbort_Portals(s->subTransactionId,
            s->parent->subTransactionId,
            s->curTransactionOwner,
            s->parent->curTransactionOwner);
    }
    CleanupSubTransaction();
    s = CurrentTransactionState;
    break;
  }
 } while (s->blockState != 143);


 Assert(s->parent == ((void*)0));


 AtCleanup_Memory();
}
