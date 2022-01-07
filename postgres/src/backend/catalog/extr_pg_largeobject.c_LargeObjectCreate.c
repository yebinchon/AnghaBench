
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int nulls ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_largeobject_metadata_lomacl ;
 int Anum_pg_largeobject_metadata_lomowner ;
 int Anum_pg_largeobject_metadata_oid ;
 int CatalogTupleInsert (int ,int ) ;
 int GetNewOidWithIndex (int ,int ,int) ;
 int GetUserId () ;
 int LargeObjectMetadataOidIndexId ;
 int LargeObjectMetadataRelationId ;
 int Natts_pg_largeobject_metadata ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
LargeObjectCreate(Oid loid)
{
 Relation pg_lo_meta;
 HeapTuple ntup;
 Oid loid_new;
 Datum values[Natts_pg_largeobject_metadata];
 bool nulls[Natts_pg_largeobject_metadata];

 pg_lo_meta = table_open(LargeObjectMetadataRelationId,
       RowExclusiveLock);




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 if (OidIsValid(loid))
  loid_new = loid;
 else
  loid_new = GetNewOidWithIndex(pg_lo_meta,
           LargeObjectMetadataOidIndexId,
           Anum_pg_largeobject_metadata_oid);

 values[Anum_pg_largeobject_metadata_oid - 1] = ObjectIdGetDatum(loid_new);
 values[Anum_pg_largeobject_metadata_lomowner - 1]
  = ObjectIdGetDatum(GetUserId());
 nulls[Anum_pg_largeobject_metadata_lomacl - 1] = 1;

 ntup = heap_form_tuple(RelationGetDescr(pg_lo_meta),
         values, nulls);

 CatalogTupleInsert(pg_lo_meta, ntup);

 heap_freetuple(ntup);

 table_close(pg_lo_meta, RowExclusiveLock);

 return loid_new;
}
