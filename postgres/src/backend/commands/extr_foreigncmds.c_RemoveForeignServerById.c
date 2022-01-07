
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
 int FOREIGNSERVEROID ;
 int ForeignServerRelationId ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveForeignServerById(Oid srvId)
{
 HeapTuple tp;
 Relation rel;

 rel = table_open(ForeignServerRelationId, RowExclusiveLock);

 tp = SearchSysCache1(FOREIGNSERVEROID, ObjectIdGetDatum(srvId));

 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign server %u", srvId);

 CatalogTupleDelete(rel, &tp->t_self);

 ReleaseSysCache(tp);

 table_close(rel, RowExclusiveLock);
}
