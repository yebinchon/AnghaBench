
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_NO_ACTIVE_SQL_TRANSACTION ;
 int ERROR ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionBlock () ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
CheckTransactionBlock(bool isTopLevel, bool throwError, const char *stmtType)
{



 if (IsTransactionBlock())
  return;




 if (IsSubTransaction())
  return;




 if (!isTopLevel)
  return;

 ereport(throwError ? ERROR : WARNING,
   (errcode(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),

    errmsg("%s can only be used in transaction blocks",
     stmtType)));
 return;
}
