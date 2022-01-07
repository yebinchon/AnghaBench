
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nulls ;
typedef int int32 ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_inherits_inhparent ;
 int Anum_pg_inherits_inhrelid ;
 int Anum_pg_inherits_inhseqno ;
 int CatalogTupleInsert (int ,int ) ;
 int InheritsRelationId ;
 int Int32GetDatum (int ) ;
 int Natts_pg_inherits ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int ,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
StoreSingleInheritance(Oid relationId, Oid parentOid, int32 seqNumber)
{
 Datum values[Natts_pg_inherits];
 bool nulls[Natts_pg_inherits];
 HeapTuple tuple;
 Relation inhRelation;

 inhRelation = table_open(InheritsRelationId, RowExclusiveLock);




 values[Anum_pg_inherits_inhrelid - 1] = ObjectIdGetDatum(relationId);
 values[Anum_pg_inherits_inhparent - 1] = ObjectIdGetDatum(parentOid);
 values[Anum_pg_inherits_inhseqno - 1] = Int32GetDatum(seqNumber);

 memset(nulls, 0, sizeof(nulls));

 tuple = heap_form_tuple(RelationGetDescr(inhRelation), values, nulls);

 CatalogTupleInsert(inhRelation, tuple);

 heap_freetuple(tuple);

 table_close(inhRelation, RowExclusiveLock);
}
