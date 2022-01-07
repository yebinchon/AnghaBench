
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONOID ;
 int PublicationRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemovePublicationById(Oid pubid)
{
 Relation rel;
 HeapTuple tup;

 rel = table_open(PublicationRelationId, RowExclusiveLock);

 tup = SearchSysCache1(PUBLICATIONOID, ObjectIdGetDatum(pubid));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for publication %u", pubid);

 CatalogTupleDelete(rel, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(rel, RowExclusiveLock);
}
