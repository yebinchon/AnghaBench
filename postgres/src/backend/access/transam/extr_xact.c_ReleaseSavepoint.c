
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_5__ {int blockState; scalar_t__ savepointLevel; struct TYPE_5__* parent; struct TYPE_5__* name; } ;


 int Assert (int) ;
 int BlockStateAsString (int) ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERRCODE_NO_ACTIVE_SQL_TRANSACTION ;
 int ERRCODE_S_E_INVALID_SPECIFICATION ;
 int ERROR ;
 int FATAL ;
 scalar_t__ IsInParallelMode () ;
 int PointerIsValid (TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ strcmp (TYPE_1__*,char const*) ;

void
ReleaseSavepoint(const char *name)
{
 TransactionState s = CurrentTransactionState;
 TransactionState target,
    xact;
 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot release savepoints during a parallel operation")));

 switch (s->blockState)
 {



  case 140:
   ereport(ERROR,
     (errcode(ERRCODE_S_E_INVALID_SPECIFICATION),
      errmsg("savepoint \"%s\" does not exist", name)));
   break;

  case 141:

   ereport(ERROR,
     (errcode(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),

      errmsg("%s can only be used in transaction blocks",
       "RELEASE SAVEPOINT")));
   break;





  case 130:
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
   elog(FATAL, "ReleaseSavepoint: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }

 for (target = s; PointerIsValid(target); target = target->parent)
 {
  if (PointerIsValid(target->name) && strcmp(target->name, name) == 0)
   break;
 }

 if (!PointerIsValid(target))
  ereport(ERROR,
    (errcode(ERRCODE_S_E_INVALID_SPECIFICATION),
     errmsg("savepoint \"%s\" does not exist", name)));


 if (target->savepointLevel != s->savepointLevel)
  ereport(ERROR,
    (errcode(ERRCODE_S_E_INVALID_SPECIFICATION),
     errmsg("savepoint \"%s\" does not exist within current savepoint level", name)));






 xact = CurrentTransactionState;
 for (;;)
 {
  Assert(xact->blockState == 130);
  xact->blockState = 129;
  if (xact == target)
   break;
  xact = xact->parent;
  Assert(PointerIsValid(xact));
 }
}
