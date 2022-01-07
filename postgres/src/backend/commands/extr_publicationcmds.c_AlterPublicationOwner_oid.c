
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterPublicationOwner_internal (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONOID ;
 int PublicationRelationId ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterPublicationOwner_oid(Oid subid, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(PublicationRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(PUBLICATIONOID, ObjectIdGetDatum(subid));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("publication with OID %u does not exist", subid)));

 AlterPublicationOwner_internal(rel, tup, newOwnerId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);
}
