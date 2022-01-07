
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
 int NAMESPACEOID ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveSchemaById(Oid schemaOid)
{
 Relation relation;
 HeapTuple tup;

 relation = table_open(NamespaceRelationId, RowExclusiveLock);

 tup = SearchSysCache1(NAMESPACEOID,
        ObjectIdGetDatum(schemaOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for namespace %u", schemaOid);

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);
}
