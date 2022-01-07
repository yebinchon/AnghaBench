
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
 int LANGOID ;
 int LanguageRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DropProceduralLanguageById(Oid langOid)
{
 Relation rel;
 HeapTuple langTup;

 rel = table_open(LanguageRelationId, RowExclusiveLock);

 langTup = SearchSysCache1(LANGOID, ObjectIdGetDatum(langOid));
 if (!HeapTupleIsValid(langTup))
  elog(ERROR, "cache lookup failed for language %u", langOid);

 CatalogTupleDelete(rel, &langTup->t_self);

 ReleaseSysCache(langTup);

 table_close(rel, RowExclusiveLock);
}
