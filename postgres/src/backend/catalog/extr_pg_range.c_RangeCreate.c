
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nulls ;
struct TYPE_4__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef int Relation ;
typedef void* RegProcedure ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_range_rngcanonical ;
 int Anum_pg_range_rngcollation ;
 int Anum_pg_range_rngsubdiff ;
 int Anum_pg_range_rngsubopc ;
 int Anum_pg_range_rngsubtype ;
 int Anum_pg_range_rngtypid ;
 int CatalogTupleInsert (int ,int ) ;
 void* CollationRelationId ;
 int DEPENDENCY_NORMAL ;
 int Natts_pg_range ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 void* OperatorClassRelationId ;
 void* ProcedureRelationId ;
 int RangeRelationId ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 void* TypeRelationId ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int ,int) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RangeCreate(Oid rangeTypeOid, Oid rangeSubType, Oid rangeCollation,
   Oid rangeSubOpclass, RegProcedure rangeCanonical,
   RegProcedure rangeSubDiff)
{
 Relation pg_range;
 Datum values[Natts_pg_range];
 bool nulls[Natts_pg_range];
 HeapTuple tup;
 ObjectAddress myself;
 ObjectAddress referenced;

 pg_range = table_open(RangeRelationId, RowExclusiveLock);

 memset(nulls, 0, sizeof(nulls));

 values[Anum_pg_range_rngtypid - 1] = ObjectIdGetDatum(rangeTypeOid);
 values[Anum_pg_range_rngsubtype - 1] = ObjectIdGetDatum(rangeSubType);
 values[Anum_pg_range_rngcollation - 1] = ObjectIdGetDatum(rangeCollation);
 values[Anum_pg_range_rngsubopc - 1] = ObjectIdGetDatum(rangeSubOpclass);
 values[Anum_pg_range_rngcanonical - 1] = ObjectIdGetDatum(rangeCanonical);
 values[Anum_pg_range_rngsubdiff - 1] = ObjectIdGetDatum(rangeSubDiff);

 tup = heap_form_tuple(RelationGetDescr(pg_range), values, nulls);

 CatalogTupleInsert(pg_range, tup);
 heap_freetuple(tup);



 myself.classId = TypeRelationId;
 myself.objectId = rangeTypeOid;
 myself.objectSubId = 0;

 referenced.classId = TypeRelationId;
 referenced.objectId = rangeSubType;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 referenced.classId = OperatorClassRelationId;
 referenced.objectId = rangeSubOpclass;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 if (OidIsValid(rangeCollation))
 {
  referenced.classId = CollationRelationId;
  referenced.objectId = rangeCollation;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(rangeCanonical))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = rangeCanonical;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(rangeSubDiff))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = rangeSubDiff;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 table_close(pg_range, RowExclusiveLock);
}
