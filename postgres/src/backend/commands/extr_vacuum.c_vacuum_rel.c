
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_17__ {int options; scalar_t__ log_min_duration; scalar_t__ index_cleanup; scalar_t__ truncate; scalar_t__ is_wraparound; } ;
typedef TYPE_2__ VacuumParams ;
struct TYPE_20__ {scalar_t__ relkind; scalar_t__ reltoastrelid; scalar_t__ relowner; } ;
struct TYPE_16__ {int lockRelId; } ;
struct TYPE_19__ {TYPE_7__* rd_rel; int * rd_options; TYPE_1__ rd_lockInfo; } ;
struct TYPE_18__ {scalar_t__ vacuum_truncate; scalar_t__ vacuum_index_cleanup; } ;
struct TYPE_15__ {int vacuumFlags; } ;
typedef TYPE_3__ StdRdOptions ;
typedef TYPE_4__* Relation ;
typedef int RangeVar ;
typedef scalar_t__ Oid ;
typedef int LockRelId ;
typedef int LOCKMODE ;


 int AccessExclusiveLock ;
 int Assert (int ) ;
 int AtEOXact_GUC (int,int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CLUOPT_VERBOSE ;
 int CommitTransactionCommand () ;
 int GetTransactionSnapshot () ;
 int GetUserIdAndSecContext (scalar_t__*,int*) ;
 scalar_t__ InvalidOid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LockRelationIdForSession (int *,int ) ;
 TYPE_14__* MyPgXact ;
 int NewGUCNestLevel () ;
 int NoLock ;
 int PROC_IN_VACUUM ;
 int PROC_VACUUM_FOR_WRAPAROUND ;
 int PopActiveSnapshot () ;
 int ProcArrayLock ;
 int PushActiveSnapshot (int ) ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_4__*) ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RelationGetRelid (TYPE_4__*) ;
 int SECURITY_RESTRICTED_OPERATION ;
 int SetUserIdAndSecContext (scalar_t__,int) ;
 int ShareUpdateExclusiveLock ;
 int StartTransactionCommand () ;
 int UnlockRelationIdForSession (int *,int ) ;
 int VACOPT_FULL ;
 int VACOPT_SKIPTOAST ;
 scalar_t__ VACOPT_TERNARY_DEFAULT ;
 void* VACOPT_TERNARY_DISABLED ;
 void* VACOPT_TERNARY_ENABLED ;
 int VACOPT_VACUUM ;
 int VACOPT_VERBOSE ;
 int WARNING ;
 int cluster_rel (scalar_t__,scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int relation_close (TYPE_4__*,int ) ;
 int table_relation_vacuum (TYPE_4__*,TYPE_2__*,int ) ;
 int vac_strategy ;
 int vacuum_is_relation_owner (int ,TYPE_7__*,int) ;
 TYPE_4__* vacuum_open_relation (scalar_t__,int *,int,int,int ) ;

__attribute__((used)) static bool
vacuum_rel(Oid relid, RangeVar *relation, VacuumParams *params)
{
 LOCKMODE lmode;
 Relation onerel;
 LockRelId onerelid;
 Oid toast_relid;
 Oid save_userid;
 int save_sec_context;
 int save_nestlevel;

 Assert(params != ((void*)0));


 StartTransactionCommand();





 PushActiveSnapshot(GetTransactionSnapshot());

 if (!(params->options & VACOPT_FULL))
 {
  LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);
  MyPgXact->vacuumFlags |= PROC_IN_VACUUM;
  if (params->is_wraparound)
   MyPgXact->vacuumFlags |= PROC_VACUUM_FOR_WRAPAROUND;
  LWLockRelease(ProcArrayLock);
 }





 CHECK_FOR_INTERRUPTS();






 lmode = (params->options & VACOPT_FULL) ?
  AccessExclusiveLock : ShareUpdateExclusiveLock;


 onerel = vacuum_open_relation(relid, relation, params->options,
          params->log_min_duration >= 0, lmode);


 if (!onerel)
 {
  PopActiveSnapshot();
  CommitTransactionCommand();
  return 0;
 }
 if (!vacuum_is_relation_owner(RelationGetRelid(onerel),
          onerel->rd_rel,
          params->options & VACOPT_VACUUM))
 {
  relation_close(onerel, lmode);
  PopActiveSnapshot();
  CommitTransactionCommand();
  return 0;
 }




 if (onerel->rd_rel->relkind != RELKIND_RELATION &&
  onerel->rd_rel->relkind != RELKIND_MATVIEW &&
  onerel->rd_rel->relkind != RELKIND_TOASTVALUE &&
  onerel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
 {
  ereport(WARNING,
    (errmsg("skipping \"%s\" --- cannot vacuum non-tables or special system tables",
      RelationGetRelationName(onerel))));
  relation_close(onerel, lmode);
  PopActiveSnapshot();
  CommitTransactionCommand();
  return 0;
 }
 if (RELATION_IS_OTHER_TEMP(onerel))
 {
  relation_close(onerel, lmode);
  PopActiveSnapshot();
  CommitTransactionCommand();
  return 0;
 }






 if (onerel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  relation_close(onerel, lmode);
  PopActiveSnapshot();
  CommitTransactionCommand();

  return 1;
 }
 onerelid = onerel->rd_lockInfo.lockRelId;
 LockRelationIdForSession(&onerelid, lmode);


 if (params->index_cleanup == VACOPT_TERNARY_DEFAULT)
 {
  if (onerel->rd_options == ((void*)0) ||
   ((StdRdOptions *) onerel->rd_options)->vacuum_index_cleanup)
   params->index_cleanup = VACOPT_TERNARY_ENABLED;
  else
   params->index_cleanup = VACOPT_TERNARY_DISABLED;
 }


 if (params->truncate == VACOPT_TERNARY_DEFAULT)
 {
  if (onerel->rd_options == ((void*)0) ||
   ((StdRdOptions *) onerel->rd_options)->vacuum_truncate)
   params->truncate = VACOPT_TERNARY_ENABLED;
  else
   params->truncate = VACOPT_TERNARY_DISABLED;
 }






 if (!(params->options & VACOPT_SKIPTOAST) && !(params->options & VACOPT_FULL))
  toast_relid = onerel->rd_rel->reltoastrelid;
 else
  toast_relid = InvalidOid;







 GetUserIdAndSecContext(&save_userid, &save_sec_context);
 SetUserIdAndSecContext(onerel->rd_rel->relowner,
         save_sec_context | SECURITY_RESTRICTED_OPERATION);
 save_nestlevel = NewGUCNestLevel();




 if (params->options & VACOPT_FULL)
 {
  int cluster_options = 0;


  relation_close(onerel, NoLock);
  onerel = ((void*)0);

  if ((params->options & VACOPT_VERBOSE) != 0)
   cluster_options |= CLUOPT_VERBOSE;


  cluster_rel(relid, InvalidOid, cluster_options);
 }
 else
  table_relation_vacuum(onerel, params, vac_strategy);


 AtEOXact_GUC(0, save_nestlevel);


 SetUserIdAndSecContext(save_userid, save_sec_context);


 if (onerel)
  relation_close(onerel, NoLock);




 PopActiveSnapshot();
 CommitTransactionCommand();
 if (toast_relid != InvalidOid)
  vacuum_rel(toast_relid, ((void*)0), params);




 UnlockRelationIdForSession(&onerelid, lmode);


 return 1;
}
