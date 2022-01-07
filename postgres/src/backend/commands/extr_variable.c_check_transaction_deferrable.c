
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 scalar_t__ FirstSnapshotSet ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errmsg (char*) ;
 scalar_t__ IsSubTransaction () ;

bool
check_transaction_deferrable(bool *newval, void **extra, GucSource source)
{
 if (IsSubTransaction())
 {
  GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
  GUC_check_errmsg("SET TRANSACTION [NOT] DEFERRABLE cannot be called within a subtransaction");
  return 0;
 }
 if (FirstSnapshotSet)
 {
  GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
  GUC_check_errmsg("SET TRANSACTION [NOT] DEFERRABLE must be called before any query");
  return 0;
 }

 return 1;
}
