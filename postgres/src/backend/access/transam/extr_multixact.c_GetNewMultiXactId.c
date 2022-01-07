
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nextMXact; int multiVacLimit; int multiWarnLimit; int multiStopLimit; int multiWrapLimit; char* oldestMultiXactDB; scalar_t__ nextOffset; scalar_t__ offsetStopLimit; scalar_t__ oldestOffset; scalar_t__ oldestOffsetKnown; } ;
typedef char* Oid ;
typedef scalar_t__ MultiXactOffset ;
typedef int MultiXactId ;


 int DEBUG2 ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ExtendMultiXactMember (scalar_t__,int) ;
 int ExtendMultiXactOffset (int) ;
 int FirstMultiXactId ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MULTIXACT_MEMBERS_PER_PAGE ;
 scalar_t__ MULTIXACT_MEMBER_SAFE_THRESHOLD ;
 int MXOffsetToMemberPage (scalar_t__) ;
 int MultiXactGenLock ;
 int MultiXactIdPrecedes (int,int) ;
 scalar_t__ MultiXactOffsetWouldWrap (scalar_t__,scalar_t__,int) ;
 TYPE_1__* MultiXactState ;
 int OFFSET_WARN_SEGMENTS ;
 int PMSIGNAL_START_AUTOVAC_LAUNCHER ;
 scalar_t__ RecoveryInProgress () ;
 int SLRU_PAGES_PER_SEGMENT ;
 int START_CRIT_SECTION () ;
 int SendPostmasterSignal (int ) ;
 int WARNING ;
 int debug_elog3 (int ,char*,int) ;
 int debug_elog4 (int ,char*,int,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_plural (char*,char*,scalar_t__,int,scalar_t__) ;
 int errhint (char*,...) ;
 int errmsg (char*,...) ;
 int errmsg_plural (char*,char*,scalar_t__,char*,scalar_t__) ;
 char* get_database_name (char*) ;

__attribute__((used)) static MultiXactId
GetNewMultiXactId(int nmembers, MultiXactOffset *offset)
{
 MultiXactId result;
 MultiXactOffset nextOffset;

 debug_elog3(DEBUG2, "GetNew: for %d xids", nmembers);


 if (RecoveryInProgress())
  elog(ERROR, "cannot assign MultiXactIds during recovery");

 LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);


 if (MultiXactState->nextMXact < FirstMultiXactId)
  MultiXactState->nextMXact = FirstMultiXactId;


 result = MultiXactState->nextMXact;
 if (!MultiXactIdPrecedes(result, MultiXactState->multiVacLimit))
 {







  MultiXactId multiWarnLimit = MultiXactState->multiWarnLimit;
  MultiXactId multiStopLimit = MultiXactState->multiStopLimit;
  MultiXactId multiWrapLimit = MultiXactState->multiWrapLimit;
  Oid oldest_datoid = MultiXactState->oldestMultiXactDB;

  LWLockRelease(MultiXactGenLock);

  if (IsUnderPostmaster &&
   !MultiXactIdPrecedes(result, multiStopLimit))
  {
   char *oldest_datname = get_database_name(oldest_datoid);





   SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);


   if (oldest_datname)
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("database is not accepting commands that generate new MultiXactIds to avoid wraparound data loss in database \"%s\"",
        oldest_datname),
       errhint("Execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
   else
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("database is not accepting commands that generate new MultiXactIds to avoid wraparound data loss in database with OID %u",
        oldest_datoid),
       errhint("Execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  }






  if (IsUnderPostmaster && (result % 65536) == 0)
   SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);

  if (!MultiXactIdPrecedes(result, multiWarnLimit))
  {
   char *oldest_datname = get_database_name(oldest_datoid);


   if (oldest_datname)
    ereport(WARNING,
      (errmsg_plural("database \"%s\" must be vacuumed before %u more MultiXactId is used",
            "database \"%s\" must be vacuumed before %u more MultiXactIds are used",
            multiWrapLimit - result,
            oldest_datname,
            multiWrapLimit - result),
       errhint("Execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
   else
    ereport(WARNING,
      (errmsg_plural("database with OID %u must be vacuumed before %u more MultiXactId is used",
            "database with OID %u must be vacuumed before %u more MultiXactIds are used",
            multiWrapLimit - result,
            oldest_datoid,
            multiWrapLimit - result),
       errhint("Execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  }


  LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);
  result = MultiXactState->nextMXact;
  if (result < FirstMultiXactId)
   result = FirstMultiXactId;
 }


 ExtendMultiXactOffset(result);






 nextOffset = MultiXactState->nextOffset;
 if (nextOffset == 0)
 {
  *offset = 1;
  nmembers++;
 }
 else
  *offset = nextOffset;
 if (MultiXactState->oldestOffsetKnown &&
  MultiXactOffsetWouldWrap(MultiXactState->offsetStopLimit, nextOffset,
         nmembers))
 {

  SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);

  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("multixact \"members\" limit exceeded"),
     errdetail_plural("This command would create a multixact with %u members, but the remaining space is only enough for %u member.",
          "This command would create a multixact with %u members, but the remaining space is only enough for %u members.",
          MultiXactState->offsetStopLimit - nextOffset - 1,
          nmembers,
          MultiXactState->offsetStopLimit - nextOffset - 1),
     errhint("Execute a database-wide VACUUM in database with OID %u with reduced vacuum_multixact_freeze_min_age and vacuum_multixact_freeze_table_age settings.",
       MultiXactState->oldestMultiXactDB)));
 }







 if (!MultiXactState->oldestOffsetKnown ||
  (MultiXactState->nextOffset - MultiXactState->oldestOffset
   > MULTIXACT_MEMBER_SAFE_THRESHOLD))
 {






  if ((MXOffsetToMemberPage(nextOffset) / SLRU_PAGES_PER_SEGMENT) !=
   (MXOffsetToMemberPage(nextOffset + nmembers) / SLRU_PAGES_PER_SEGMENT))
   SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);
 }

 if (MultiXactState->oldestOffsetKnown &&
  MultiXactOffsetWouldWrap(MultiXactState->offsetStopLimit,
         nextOffset,
         nmembers + MULTIXACT_MEMBERS_PER_PAGE * SLRU_PAGES_PER_SEGMENT * 20))
  ereport(WARNING,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg_plural("database with OID %u must be vacuumed before %d more multixact member is used",
          "database with OID %u must be vacuumed before %d more multixact members are used",
          MultiXactState->offsetStopLimit - nextOffset + nmembers,
          MultiXactState->oldestMultiXactDB,
          MultiXactState->offsetStopLimit - nextOffset + nmembers),
     errhint("Execute a database-wide VACUUM in that database with reduced vacuum_multixact_freeze_min_age and vacuum_multixact_freeze_table_age settings.")));

 ExtendMultiXactMember(nextOffset, nmembers);
 START_CRIT_SECTION();
 (MultiXactState->nextMXact)++;

 MultiXactState->nextOffset += nmembers;

 LWLockRelease(MultiXactGenLock);

 debug_elog4(DEBUG2, "GetNew: returning %u offset %u", result, *offset);
 return result;
}
