
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; int chain; struct TYPE_3__* parent; } ;


 int Assert (int) ;
 int BlockStateAsString (int) ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERRCODE_NO_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 int FATAL ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

void
UserAbortTransactionBlock(bool chain)
{
 TransactionState s = CurrentTransactionState;

 switch (s->blockState)
 {





  case 140:
   s->blockState = 145;
   break;







  case 147:
   s->blockState = 146;
   break;





  case 130:
  case 136:
   while (s->parent != ((void*)0))
   {
    if (s->blockState == 130)
     s->blockState = 134;
    else if (s->blockState == 136)
     s->blockState = 135;
    else
     elog(FATAL, "UserAbortTransactionBlock: unexpected state %s",
       BlockStateAsString(s->blockState));
    s = s->parent;
   }
   if (s->blockState == 140)
    s->blockState = 145;
   else if (s->blockState == 147)
    s->blockState = 146;
   else
    elog(FATAL, "UserAbortTransactionBlock: unexpected state %s",
      BlockStateAsString(s->blockState));
   break;
  case 137:
  case 141:
   if (chain)
    ereport(ERROR,
      (errcode(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),

       errmsg("%s can only be used in transaction blocks",
        "ROLLBACK AND CHAIN")));
   else
    ereport(WARNING,
      (errcode(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
       errmsg("there is no transaction in progress")));
   s->blockState = 145;
   break;





  case 139:
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
      errmsg("cannot abort during a parallel operation")));
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
   elog(FATAL, "UserAbortTransactionBlock: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }

 Assert(s->blockState == 146 ||
     s->blockState == 145);

 s->chain = chain;
}
