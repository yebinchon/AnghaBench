
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_3__ {int name; } ;
typedef int Relation ;
typedef TYPE_1__ Publication ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_publication_rel_oid ;
 int Anum_pg_publication_rel_prpubid ;
 int Anum_pg_publication_rel_prrelid ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleInsert (int ,int ) ;
 int DEPENDENCY_AUTO ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int GetNewOidWithIndex (int ,int ,int) ;
 TYPE_1__* GetPublication (int ) ;
 int InvalidObjectAddress ;
 int Natts_pg_publication_rel ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONRELMAP ;
 int PublicationRelObjectIndexId ;
 int PublicationRelRelationId ;
 int PublicationRelationId ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 scalar_t__ SearchSysCacheExists2 (int ,int,int) ;
 int check_publication_add_relation (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
publication_add_relation(Oid pubid, Relation targetrel,
       bool if_not_exists)
{
 Relation rel;
 HeapTuple tup;
 Datum values[Natts_pg_publication_rel];
 bool nulls[Natts_pg_publication_rel];
 Oid relid = RelationGetRelid(targetrel);
 Oid prrelid;
 Publication *pub = GetPublication(pubid);
 ObjectAddress myself,
    referenced;

 rel = table_open(PublicationRelRelationId, RowExclusiveLock);






 if (SearchSysCacheExists2(PUBLICATIONRELMAP, ObjectIdGetDatum(relid),
         ObjectIdGetDatum(pubid)))
 {
  table_close(rel, RowExclusiveLock);

  if (if_not_exists)
   return InvalidObjectAddress;

  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("relation \"%s\" is already member of publication \"%s\"",
      RelationGetRelationName(targetrel), pub->name)));
 }

 check_publication_add_relation(targetrel);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 prrelid = GetNewOidWithIndex(rel, PublicationRelObjectIndexId,
         Anum_pg_publication_rel_oid);
 values[Anum_pg_publication_rel_oid - 1] = ObjectIdGetDatum(prrelid);
 values[Anum_pg_publication_rel_prpubid - 1] =
  ObjectIdGetDatum(pubid);
 values[Anum_pg_publication_rel_prrelid - 1] =
  ObjectIdGetDatum(relid);

 tup = heap_form_tuple(RelationGetDescr(rel), values, nulls);


 CatalogTupleInsert(rel, tup);
 heap_freetuple(tup);

 ObjectAddressSet(myself, PublicationRelRelationId, prrelid);


 ObjectAddressSet(referenced, PublicationRelationId, pubid);
 recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);


 ObjectAddressSet(referenced, RelationRelationId, relid);
 recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);


 table_close(rel, RowExclusiveLock);


 CacheInvalidateRelcache(targetrel);

 return myself;
}
