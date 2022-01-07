
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int prrelid; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_publication_rel ;


 int CacheInvalidateRelcacheByRelid (int ) ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONREL ;
 int PublicationRelRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemovePublicationRelById(Oid proid)
{
 Relation rel;
 HeapTuple tup;
 Form_pg_publication_rel pubrel;

 rel = table_open(PublicationRelRelationId, RowExclusiveLock);

 tup = SearchSysCache1(PUBLICATIONREL, ObjectIdGetDatum(proid));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for publication table %u",
    proid);

 pubrel = (Form_pg_publication_rel) GETSTRUCT(tup);


 CacheInvalidateRelcacheByRelid(pubrel->prrelid);

 CatalogTupleDelete(rel, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(rel, RowExclusiveLock);
}
