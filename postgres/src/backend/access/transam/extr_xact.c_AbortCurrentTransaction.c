
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; int state; } ;


 int AbortSubTransaction () ;
 int AbortTransaction () ;
 int CleanupSubTransaction () ;
 int CleanupTransaction () ;
 TYPE_1__* CurrentTransactionState ;
 int TRANS_DEFAULT ;
 int TRANS_INPROGRESS ;
 int TRANS_START ;

void
AbortCurrentTransaction(void)
{
 TransactionState s = CurrentTransactionState;

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
  case 141:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   break;
  case 144:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   break;






  case 140:
  case 139:
   AbortTransaction();
   s->blockState = 147;

   break;






  case 142:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   break;






  case 147:
  case 136:
   break;






  case 146:
   CleanupTransaction();
   s->blockState = 143;
   break;





  case 145:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   break;






  case 138:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   break;






  case 130:
   AbortSubTransaction();
   s->blockState = 136;
   break;






  case 132:
  case 129:
  case 131:
  case 134:
  case 128:
   AbortSubTransaction();
   CleanupSubTransaction();
   AbortCurrentTransaction();
   break;




  case 135:
  case 133:
   CleanupSubTransaction();
   AbortCurrentTransaction();
   break;
 }
}
