
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; } ;


 int AbortSubTransaction () ;
 int AssertState (int) ;
 int BlockStateAsString (int) ;
 int CleanupSubTransaction () ;
 TYPE_1__* CurrentTransactionState ;
 int FATAL ;
 int elog (int ,char*,int ) ;

void
RollbackAndReleaseCurrentSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;
 switch (s->blockState)
 {

  case 130:
  case 136:
   break;


  case 143:
  case 137:
  case 144:
  case 141:
  case 139:
  case 132:
  case 140:
  case 142:
  case 129:
  case 131:
  case 147:
  case 146:
  case 135:
  case 145:
  case 134:
  case 128:
  case 133:
  case 138:
   elog(FATAL, "RollbackAndReleaseCurrentSubTransaction: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }




 if (s->blockState == 130)
  AbortSubTransaction();


 CleanupSubTransaction();

 s = CurrentTransactionState;
 AssertState(s->blockState == 130 ||
    s->blockState == 140 ||
    s->blockState == 141 ||
    s->blockState == 137);
}
