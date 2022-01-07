
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
 int FOREIGNDATAWRAPPEROID ;
 int ForeignDataWrapperRelationId ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveForeignDataWrapperById(Oid fdwId)
{
 HeapTuple tp;
 Relation rel;

 rel = table_open(ForeignDataWrapperRelationId, RowExclusiveLock);

 tp = SearchSysCache1(FOREIGNDATAWRAPPEROID, ObjectIdGetDatum(fdwId));

 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign-data wrapper %u", fdwId);

 CatalogTupleDelete(rel, &tp->t_self);

 ReleaseSysCache(tp);

 table_close(rel, RowExclusiveLock);
}
