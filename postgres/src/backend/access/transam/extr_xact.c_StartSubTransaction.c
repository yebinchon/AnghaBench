
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__* parent; int subTransactionId; } ;
struct TYPE_4__ {int subTransactionId; } ;


 int AfterTriggerBeginSubXact () ;
 int AtSubStart_Memory () ;
 int AtSubStart_ResourceOwner () ;
 int CallSubXactCallbacks (int ,int ,int ) ;
 TYPE_2__* CurrentTransactionState ;
 int SUBXACT_EVENT_START_SUB ;
 int ShowTransactionState (char*) ;
 scalar_t__ TRANS_DEFAULT ;
 scalar_t__ TRANS_INPROGRESS ;
 scalar_t__ TRANS_START ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
StartSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->state != TRANS_DEFAULT)
  elog(WARNING, "StartSubTransaction while in %s state",
    TransStateAsString(s->state));

 s->state = TRANS_START;






 AtSubStart_Memory();
 AtSubStart_ResourceOwner();
 AfterTriggerBeginSubXact();

 s->state = TRANS_INPROGRESS;




 CallSubXactCallbacks(SUBXACT_EVENT_START_SUB, s->subTransactionId,
       s->parent->subTransactionId);

 ShowTransactionState("StartSubTransaction");
}
