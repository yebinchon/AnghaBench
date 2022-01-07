
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_publication ;


 int AlterPublicationOwner_internal (int ,int ,int ) ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int PUBLICATIONNAME ;
 int PublicationRelationId ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterPublicationOwner(const char *name, Oid newOwnerId)
{
 Oid subid;
 HeapTuple tup;
 Relation rel;
 ObjectAddress address;
 Form_pg_publication pubform;

 rel = table_open(PublicationRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(PUBLICATIONNAME, CStringGetDatum(name));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("publication \"%s\" does not exist", name)));

 pubform = (Form_pg_publication) GETSTRUCT(tup);
 subid = pubform->oid;

 AlterPublicationOwner_internal(rel, tup, newOwnerId);

 ObjectAddressSet(address, PublicationRelationId, subid);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);

 return address;
}
