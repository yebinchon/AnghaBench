
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int AMOID ;
 int AccessMethodRelationId ;
 int CatalogTupleDelete (int ,int *) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int superuser () ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveAccessMethodById(Oid amOid)
{
 Relation relation;
 HeapTuple tup;

 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser to drop access methods")));

 relation = table_open(AccessMethodRelationId, RowExclusiveLock);

 tup = SearchSysCache1(AMOID, ObjectIdGetDatum(amOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for access method %u", amOid);

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);
}
