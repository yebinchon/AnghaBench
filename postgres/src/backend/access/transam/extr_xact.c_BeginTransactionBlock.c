
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; } ;


 int BlockStateAsString (int) ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int FATAL ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
BeginTransactionBlock(void)
{
 TransactionState s = CurrentTransactionState;

 switch (s->blockState)
 {



  case 137:
   s->blockState = 144;
   break;






  case 141:
   s->blockState = 144;
   break;




  case 140:
  case 139:
  case 130:
  case 147:
  case 136:
   ereport(WARNING,
     (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),
      errmsg("there is already a transaction in progress")));
   break;


  case 143:
  case 144:
  case 132:
  case 142:
  case 129:
  case 131:
  case 146:
  case 135:
  case 145:
  case 134:
  case 128:
  case 133:
  case 138:
   elog(FATAL, "BeginTransactionBlock: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }
}
