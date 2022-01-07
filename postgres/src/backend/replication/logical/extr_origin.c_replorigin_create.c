
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nulls ;
typedef int SysScanDesc ;
typedef int SnapshotData ;
typedef int ScanKeyData ;
typedef scalar_t__ RepOriginId ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_replication_origin_roident ;
 int Anum_pg_replication_origin_roname ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int CHECK_FOR_INTERRUPTS () ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (int ,int *) ;
 int CommandCounterIncrement () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ExclusiveLock ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int ) ;
 int InitDirtySnapshot (int ) ;
 scalar_t__ InvalidOid ;
 int IsTransactionState () ;
 int Natts_pg_replication_origin ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ PG_UINT16_MAX ;
 int RelationGetDescr (int ) ;
 int ReplicationOriginIdentIndex ;
 int ReplicationOriginRelationId ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int *) ;
 int memset (int**,int ,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

RepOriginId
replorigin_create(char *roname)
{
 Oid roident;
 HeapTuple tuple = ((void*)0);
 Relation rel;
 Datum roname_d;
 SnapshotData SnapshotDirty;
 SysScanDesc scan;
 ScanKeyData key;

 roname_d = CStringGetTextDatum(roname);

 Assert(IsTransactionState());
 InitDirtySnapshot(SnapshotDirty);

 rel = table_open(ReplicationOriginRelationId, ExclusiveLock);

 for (roident = InvalidOid + 1; roident < PG_UINT16_MAX; roident++)
 {
  bool nulls[Natts_pg_replication_origin];
  Datum values[Natts_pg_replication_origin];
  bool collides;

  CHECK_FOR_INTERRUPTS();

  ScanKeyInit(&key,
     Anum_pg_replication_origin_roident,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(roident));

  scan = systable_beginscan(rel, ReplicationOriginIdentIndex,
          1 ,
          &SnapshotDirty,
          1, &key);

  collides = HeapTupleIsValid(systable_getnext(scan));

  systable_endscan(scan);

  if (!collides)
  {




   memset(&nulls, 0, sizeof(nulls));

   values[Anum_pg_replication_origin_roident - 1] = ObjectIdGetDatum(roident);
   values[Anum_pg_replication_origin_roname - 1] = roname_d;

   tuple = heap_form_tuple(RelationGetDescr(rel), values, nulls);
   CatalogTupleInsert(rel, tuple);
   CommandCounterIncrement();
   break;
  }
 }


 table_close(rel, ExclusiveLock);

 if (tuple == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("could not find free replication origin OID")));

 heap_freetuple(tuple);
 return roident;
}
