
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int isnull ;
struct TYPE_23__ {scalar_t__ inhparent; int inhrelid; } ;
struct TYPE_22__ {int t_self; } ;
struct TYPE_21__ {TYPE_2__* rd_index; TYPE_1__* rd_rel; } ;
struct TYPE_20__ {scalar_t__ indrelid; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_3__* Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_inherits ;
typedef int Datum ;


 int Anum_pg_inherits_inhparent ;
 int Anum_pg_inherits_inhrelid ;
 int Anum_pg_inherits_inhseqno ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (TYPE_3__*,int *) ;
 int CatalogTupleInsert (TYPE_3__*,TYPE_4__*) ;
 int CommandCounterIncrement () ;
 int DEPENDENCY_PARTITION_PRI ;
 int DEPENDENCY_PARTITION_SEC ;
 int ERROR ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_4__*) ;
 int HeapTupleIsValid (TYPE_4__*) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int Int32GetDatum (int) ;
 scalar_t__ InvalidOid ;
 int Natts_pg_inherits ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationGetDescr (TYPE_3__*) ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 int SetRelationHasSubclass (scalar_t__,int) ;
 int deleteDependencyRecordsForClass (int ,scalar_t__,int ,int ) ;
 int elog (int ,char*,int ,scalar_t__) ;
 TYPE_4__* heap_form_tuple (int ,int *,int*) ;
 int memset (int*,int,int) ;
 int recordDependencyOn (int *,int *,int ) ;
 int relation_close (TYPE_3__*,int ) ;
 TYPE_3__* relation_open (int ,int ) ;
 int systable_beginscan (TYPE_3__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_4__* systable_getnext (int ) ;
 int update_relispartition (scalar_t__,scalar_t__) ;

void
IndexSetParentIndex(Relation partitionIdx, Oid parentOid)
{
 Relation pg_inherits;
 ScanKeyData key[2];
 SysScanDesc scan;
 Oid partRelid = RelationGetRelid(partitionIdx);
 HeapTuple tuple;
 bool fix_dependencies;


 Assert(partitionIdx->rd_rel->relkind == RELKIND_INDEX ||
     partitionIdx->rd_rel->relkind == RELKIND_PARTITIONED_INDEX);




 pg_inherits = relation_open(InheritsRelationId, RowExclusiveLock);
 ScanKeyInit(&key[0],
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(partRelid));
 ScanKeyInit(&key[1],
    Anum_pg_inherits_inhseqno,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(1));
 scan = systable_beginscan(pg_inherits, InheritsRelidSeqnoIndexId, 1,
         ((void*)0), 2, key);
 tuple = systable_getnext(scan);

 if (!HeapTupleIsValid(tuple))
 {
  if (parentOid == InvalidOid)
  {




   fix_dependencies = 0;
  }
  else
  {
   Datum values[Natts_pg_inherits];
   bool isnull[Natts_pg_inherits];





   values[Anum_pg_inherits_inhrelid - 1] = ObjectIdGetDatum(partRelid);
   values[Anum_pg_inherits_inhparent - 1] =
    ObjectIdGetDatum(parentOid);
   values[Anum_pg_inherits_inhseqno - 1] = Int32GetDatum(1);
   memset(isnull, 0, sizeof(isnull));

   tuple = heap_form_tuple(RelationGetDescr(pg_inherits),
         values, isnull);
   CatalogTupleInsert(pg_inherits, tuple);

   fix_dependencies = 1;
  }
 }
 else
 {
  Form_pg_inherits inhForm = (Form_pg_inherits) GETSTRUCT(tuple);

  if (parentOid == InvalidOid)
  {



   CatalogTupleDelete(pg_inherits, &tuple->t_self);
   fix_dependencies = 1;
  }
  else
  {





   if (inhForm->inhparent != parentOid)
   {

    elog(ERROR, "bogus pg_inherit row: inhrelid %u inhparent %u",
      inhForm->inhrelid, inhForm->inhparent);
   }


   fix_dependencies = 0;
  }
 }


 systable_endscan(scan);
 relation_close(pg_inherits, RowExclusiveLock);


 if (OidIsValid(parentOid))
  SetRelationHasSubclass(parentOid, 1);


 update_relispartition(partRelid, OidIsValid(parentOid));

 if (fix_dependencies)
 {





  if (OidIsValid(parentOid))
  {
   ObjectAddress partIdx;
   ObjectAddress parentIdx;
   ObjectAddress partitionTbl;

   ObjectAddressSet(partIdx, RelationRelationId, partRelid);
   ObjectAddressSet(parentIdx, RelationRelationId, parentOid);
   ObjectAddressSet(partitionTbl, RelationRelationId,
        partitionIdx->rd_index->indrelid);
   recordDependencyOn(&partIdx, &parentIdx,
          DEPENDENCY_PARTITION_PRI);
   recordDependencyOn(&partIdx, &partitionTbl,
          DEPENDENCY_PARTITION_SEC);
  }
  else
  {
   deleteDependencyRecordsForClass(RelationRelationId, partRelid,
           RelationRelationId,
           DEPENDENCY_PARTITION_PRI);
   deleteDependencyRecordsForClass(RelationRelationId, partRelid,
           RelationRelationId,
           DEPENDENCY_PARTITION_SEC);
  }


  CommandCounterIncrement();
 }
}
