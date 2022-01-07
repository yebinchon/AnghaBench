
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ts_id; } ;
typedef TYPE_1__ xl_tblspc_drop_rec ;
typedef int TableScanDesc ;
struct TYPE_12__ {char* tablespacename; int missing_ok; } ;
struct TYPE_11__ {scalar_t__ oid; } ;
struct TYPE_10__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_tablespace ;
typedef TYPE_4__ DropTableSpaceStmt ;


 int ACLCHECK_NOT_OWNER ;
 int ACLCHECK_NO_PRIV ;
 int Anum_pg_tablespace_spcname ;
 int BTEqualStrategyNumber ;
 int CHECKPOINT_FORCE ;
 int CHECKPOINT_IMMEDIATE ;
 int CHECKPOINT_WAIT ;
 int CStringGetDatum (char*) ;
 int CatalogTupleDelete (int ,int *) ;
 scalar_t__ DEFAULTTABLESPACE_OID ;
 int DeleteSharedComments (scalar_t__,int ) ;
 int DeleteSharedSecurityLabel (scalar_t__,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int ForceSyncCommit () ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectDropHook (int ,scalar_t__,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int NOTICE ;
 int NoLock ;
 int OBJECT_TABLESPACE ;
 int RM_TBLSPC_ID ;
 int RequestCheckpoint (int) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TableSpaceRelationId ;
 int TablespaceCreateLock ;
 int XLOG_TBLSPC_DROP ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int aclcheck_error (int ,int ,char*) ;
 int deleteSharedDependencyRecordsFor (int ,scalar_t__,int ) ;
 int destroy_tablespace_directories (scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_2__* heap_getnext (int ,int ) ;
 int pg_tablespace_ownercheck (scalar_t__,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

void
DropTableSpace(DropTableSpaceStmt *stmt)
{
 ereport(ERROR,
   (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
    errmsg("tablespaces are not supported on this platform")));

}
