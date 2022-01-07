
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blockState; } ;


 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 int FATAL ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionBlock () ;
 scalar_t__ TBLOCK_DEFAULT ;
 scalar_t__ TBLOCK_STARTED ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

void
PreventInTransactionBlock(bool isTopLevel, const char *stmtType)
{



 if (IsTransactionBlock())
  ereport(ERROR,
    (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),

     errmsg("%s cannot run inside a transaction block",
      stmtType)));




 if (IsSubTransaction())
  ereport(ERROR,
    (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),

     errmsg("%s cannot run inside a subtransaction",
      stmtType)));




 if (!isTopLevel)
  ereport(ERROR,
    (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),

     errmsg("%s cannot be executed from a function", stmtType)));


 if (CurrentTransactionState->blockState != TBLOCK_DEFAULT &&
  CurrentTransactionState->blockState != TBLOCK_STARTED)
  elog(FATAL, "cannot prevent transaction chain");

}
