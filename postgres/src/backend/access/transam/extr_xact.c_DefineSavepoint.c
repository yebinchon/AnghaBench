
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; int name; } ;


 int BlockStateAsString (int) ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERRCODE_NO_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 int FATAL ;
 scalar_t__ IsInParallelMode () ;
 int MemoryContextStrdup (int ,char const*) ;
 int PushTransaction () ;
 int TopTransactionContext ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

void
DefineSavepoint(const char *name)
{
 TransactionState s = CurrentTransactionState;
 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot define savepoints during a parallel operation")));

 switch (s->blockState)
 {
  case 140:
  case 130:

   PushTransaction();
   s = CurrentTransactionState;





   if (name)
    s->name = MemoryContextStrdup(TopTransactionContext, name);
   break;
  case 141:
   ereport(ERROR,
     (errcode(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),

      errmsg("%s can only be used in transaction blocks",
       "SAVEPOINT")));
   break;


  case 143:
  case 137:
  case 144:
  case 139:
  case 132:
  case 142:
  case 129:
  case 131:
  case 147:
  case 136:
  case 146:
  case 135:
  case 145:
  case 134:
  case 128:
  case 133:
  case 138:
   elog(FATAL, "DefineSavepoint: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }
}
