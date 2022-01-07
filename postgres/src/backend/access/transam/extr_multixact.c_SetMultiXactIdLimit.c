
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* oldestMultiXactDB; scalar_t__ nextMXact; int finishedStartup; scalar_t__ multiWrapLimit; scalar_t__ multiStopLimit; scalar_t__ multiWarnLimit; scalar_t__ multiVacLimit; scalar_t__ oldestMultiXactId; } ;
typedef char* Oid ;
typedef scalar_t__ MultiXactId ;


 int Assert (int) ;
 int DEBUG1 ;
 scalar_t__ FirstMultiXactId ;
 int InRecovery ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MaxMultiXactId ;
 int MultiXactGenLock ;
 int MultiXactIdIsValid (scalar_t__) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 TYPE_1__* MultiXactState ;
 int PMSIGNAL_START_AUTOVAC_LAUNCHER ;
 int SendPostmasterSignal (int ) ;
 int SetOffsetVacuumLimit (int) ;
 int WARNING ;
 scalar_t__ autovacuum_multixact_freeze_max_age ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*,scalar_t__,char*) ;
 int errmsg_plural (char*,char*,scalar_t__,char*,scalar_t__) ;
 char* get_database_name (char*) ;

void
SetMultiXactIdLimit(MultiXactId oldest_datminmxid, Oid oldest_datoid,
     bool is_startup)
{
 MultiXactId multiVacLimit;
 MultiXactId multiWarnLimit;
 MultiXactId multiStopLimit;
 MultiXactId multiWrapLimit;
 MultiXactId curMulti;
 bool needs_offset_vacuum;

 Assert(MultiXactIdIsValid(oldest_datminmxid));
 multiWrapLimit = oldest_datminmxid + (MaxMultiXactId >> 1);
 if (multiWrapLimit < FirstMultiXactId)
  multiWrapLimit += FirstMultiXactId;
 multiStopLimit = multiWrapLimit - 100;
 if (multiStopLimit < FirstMultiXactId)
  multiStopLimit -= FirstMultiXactId;
 multiWarnLimit = multiStopLimit - 10000000;
 if (multiWarnLimit < FirstMultiXactId)
  multiWarnLimit -= FirstMultiXactId;
 multiVacLimit = oldest_datminmxid + autovacuum_multixact_freeze_max_age;
 if (multiVacLimit < FirstMultiXactId)
  multiVacLimit += FirstMultiXactId;


 LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);
 MultiXactState->oldestMultiXactId = oldest_datminmxid;
 MultiXactState->oldestMultiXactDB = oldest_datoid;
 MultiXactState->multiVacLimit = multiVacLimit;
 MultiXactState->multiWarnLimit = multiWarnLimit;
 MultiXactState->multiStopLimit = multiStopLimit;
 MultiXactState->multiWrapLimit = multiWrapLimit;
 curMulti = MultiXactState->nextMXact;
 LWLockRelease(MultiXactGenLock);


 ereport(DEBUG1,
   (errmsg("MultiXactId wrap limit is %u, limited by database with OID %u",
     multiWrapLimit, oldest_datoid)));
 if (!MultiXactState->finishedStartup)
  return;

 Assert(!InRecovery);


 needs_offset_vacuum = SetOffsetVacuumLimit(is_startup);
 if ((MultiXactIdPrecedes(multiVacLimit, curMulti) ||
   needs_offset_vacuum) && IsUnderPostmaster)
  SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);


 if (MultiXactIdPrecedes(multiWarnLimit, curMulti))
 {
  char *oldest_datname;
  if (IsTransactionState())
   oldest_datname = get_database_name(oldest_datoid);
  else
   oldest_datname = ((void*)0);

  if (oldest_datname)
   ereport(WARNING,
     (errmsg_plural("database \"%s\" must be vacuumed before %u more MultiXactId is used",
           "database \"%s\" must be vacuumed before %u more MultiXactIds are used",
           multiWrapLimit - curMulti,
           oldest_datname,
           multiWrapLimit - curMulti),
      errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
        "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  else
   ereport(WARNING,
     (errmsg_plural("database with OID %u must be vacuumed before %u more MultiXactId is used",
           "database with OID %u must be vacuumed before %u more MultiXactIds are used",
           multiWrapLimit - curMulti,
           oldest_datoid,
           multiWrapLimit - curMulti),
      errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
        "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
 }
}
