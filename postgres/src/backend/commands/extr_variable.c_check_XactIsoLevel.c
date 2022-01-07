
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 scalar_t__ FirstSnapshotSet ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errhint (char*) ;
 int GUC_check_errmsg (char*) ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ RecoveryInProgress () ;
 int XACT_SERIALIZABLE ;
 int XactIsoLevel ;

bool
check_XactIsoLevel(int *newval, void **extra, GucSource source)
{
 int newXactIsoLevel = *newval;

 if (newXactIsoLevel != XactIsoLevel && IsTransactionState())
 {
  if (FirstSnapshotSet)
  {
   GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
   GUC_check_errmsg("SET TRANSACTION ISOLATION LEVEL must be called before any query");
   return 0;
  }

  if (IsSubTransaction())
  {
   GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
   GUC_check_errmsg("SET TRANSACTION ISOLATION LEVEL must not be called in a subtransaction");
   return 0;
  }

  if (newXactIsoLevel == XACT_SERIALIZABLE && RecoveryInProgress())
  {
   GUC_check_errcode(ERRCODE_FEATURE_NOT_SUPPORTED);
   GUC_check_errmsg("cannot use serializable mode in a hot standby");
   GUC_check_errhint("You can use REPEATABLE READ instead.");
   return 0;
  }
 }

 return 1;
}
