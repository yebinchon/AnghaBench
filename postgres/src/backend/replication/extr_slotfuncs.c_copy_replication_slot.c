
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ XLogSegNo ;
typedef scalar_t__ XLogRecPtr ;
typedef int TupleDesc ;
typedef void* TransactionId ;
struct TYPE_8__ {scalar_t__ confirmed_flush; scalar_t__ restart_lsn; void* catalog_xmin; void* xmin; } ;
struct TYPE_11__ {TYPE_2__ data; int mutex; void* effective_catalog_xmin; void* effective_xmin; } ;
struct TYPE_10__ {TYPE_3__* replication_slots; } ;
struct TYPE_7__ {scalar_t__ restart_lsn; scalar_t__ persistency; int name; void* catalog_xmin; void* xmin; int plugin; } ;
struct TYPE_9__ {int mutex; TYPE_1__ data; void* effective_catalog_xmin; void* effective_xmin; scalar_t__ in_use; } ;
typedef TYPE_3__ ReplicationSlot ;
typedef int * Name ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int Assert (int) ;
 int CheckLogicalDecodingRequirements () ;
 int CheckSlotRequirements () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 int LSNGetDatum (scalar_t__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_6__* MyReplicationSlot ;
 int NameGetDatum (int *) ;
 char* NameStr (int ) ;
 int PG_GETARG_BOOL (int) ;
 int * PG_GETARG_NAME (int) ;
 int PG_NARGS () ;
 int PG_RETURN_DATUM (int ) ;
 scalar_t__ RS_TEMPORARY ;
 int ReplicationSlotControlLock ;
 TYPE_5__* ReplicationSlotCtl ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotPersist () ;
 int ReplicationSlotRelease () ;
 int ReplicationSlotSave () ;
 int ReplicationSlotsComputeRequiredLSN () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int SlotIsLogical (TYPE_3__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int XLByteToSeg (scalar_t__,scalar_t__,int ) ;
 scalar_t__ XLogGetLastRemovedSegno () ;
 scalar_t__ XLogRecPtrIsInvalid (scalar_t__) ;
 int check_permissions () ;
 int create_logical_replication_slot (char*,char*,int,scalar_t__) ;
 int create_physical_replication_slot (char*,int,int,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;
 int heap_form_tuple (int ,int *,int*) ;
 int max_replication_slots ;
 char* pstrdup (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int wal_segment_size ;

__attribute__((used)) static Datum
copy_replication_slot(FunctionCallInfo fcinfo, bool logical_slot)
{
 Name src_name = PG_GETARG_NAME(0);
 Name dst_name = PG_GETARG_NAME(1);
 ReplicationSlot *src = ((void*)0);
 XLogRecPtr src_restart_lsn;
 bool src_islogical;
 bool temporary;
 char *plugin;
 Datum values[2];
 bool nulls[2];
 Datum result;
 TupleDesc tupdesc;
 HeapTuple tuple;

 if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
  elog(ERROR, "return type must be a row type");

 check_permissions();

 if (logical_slot)
  CheckLogicalDecodingRequirements();
 else
  CheckSlotRequirements();

 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (int i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

  if (s->in_use && strcmp(NameStr(s->data.name), NameStr(*src_name)) == 0)
  {
   SpinLockAcquire(&s->mutex);
   src_islogical = SlotIsLogical(s);
   src_restart_lsn = s->data.restart_lsn;
   temporary = s->data.persistency == RS_TEMPORARY;
   plugin = logical_slot ? pstrdup(NameStr(s->data.plugin)) : ((void*)0);
   SpinLockRelease(&s->mutex);

   src = s;
   break;
  }
 }

 LWLockRelease(ReplicationSlotControlLock);

 if (src == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("replication slot \"%s\" does not exist", NameStr(*src_name))));


 if (src_islogical != logical_slot)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     src_islogical ?
     errmsg("cannot copy physical replication slot \"%s\" as a logical replication slot",
      NameStr(*src_name)) :
     errmsg("cannot copy logical replication slot \"%s\" as a physical replication slot",
      NameStr(*src_name))));


 if (XLogRecPtrIsInvalid(src_restart_lsn))
 {
  Assert(!logical_slot);
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     (errmsg("cannot copy a replication slot that doesn't reserve WAL"))));
 }


 if (PG_NARGS() >= 3)
  temporary = PG_GETARG_BOOL(2);
 if (PG_NARGS() >= 4)
 {
  Assert(logical_slot);
  plugin = NameStr(*(PG_GETARG_NAME(3)));
 }


 if (logical_slot)
  create_logical_replication_slot(NameStr(*dst_name),
          plugin,
          temporary,
          src_restart_lsn);
 else
  create_physical_replication_slot(NameStr(*dst_name),
           1,
           temporary,
           src_restart_lsn);





 {
  TransactionId copy_effective_xmin;
  TransactionId copy_effective_catalog_xmin;
  TransactionId copy_xmin;
  TransactionId copy_catalog_xmin;
  XLogRecPtr copy_restart_lsn;
  bool copy_islogical;
  char *copy_name;


  SpinLockAcquire(&src->mutex);
  copy_effective_xmin = src->effective_xmin;
  copy_effective_catalog_xmin = src->effective_catalog_xmin;

  copy_xmin = src->data.xmin;
  copy_catalog_xmin = src->data.catalog_xmin;
  copy_restart_lsn = src->data.restart_lsn;


  copy_name = pstrdup(NameStr(src->data.name));
  copy_islogical = SlotIsLogical(src);
  SpinLockRelease(&src->mutex);
  if (copy_restart_lsn < src_restart_lsn ||
   src_islogical != copy_islogical ||
   strcmp(copy_name, NameStr(*src_name)) != 0)
   ereport(ERROR,
     (errmsg("could not copy replication slot \"%s\"",
       NameStr(*src_name)),
      errdetail("The source replication slot was modified incompatibly during the copy operation.")));


  SpinLockAcquire(&MyReplicationSlot->mutex);
  MyReplicationSlot->effective_xmin = copy_effective_xmin;
  MyReplicationSlot->effective_catalog_xmin = copy_effective_catalog_xmin;

  MyReplicationSlot->data.xmin = copy_xmin;
  MyReplicationSlot->data.catalog_xmin = copy_catalog_xmin;
  MyReplicationSlot->data.restart_lsn = copy_restart_lsn;
  SpinLockRelease(&MyReplicationSlot->mutex);

  ReplicationSlotMarkDirty();
  ReplicationSlotsComputeRequiredXmin(0);
  ReplicationSlotsComputeRequiredLSN();
  ReplicationSlotSave();
 }


 if (logical_slot && !temporary)
  ReplicationSlotPersist();


 values[0] = NameGetDatum(dst_name);
 nulls[0] = 0;
 if (!XLogRecPtrIsInvalid(MyReplicationSlot->data.confirmed_flush))
 {
  values[1] = LSNGetDatum(MyReplicationSlot->data.confirmed_flush);
  nulls[1] = 0;
 }
 else
  nulls[1] = 1;

 tuple = heap_form_tuple(tupdesc, values, nulls);
 result = HeapTupleGetDatum(tuple);

 ReplicationSlotRelease();

 PG_RETURN_DATUM(result);
}
