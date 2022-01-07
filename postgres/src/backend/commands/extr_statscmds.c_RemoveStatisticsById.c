
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int stxrelid; } ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_statistic_ext ;


 int CacheInvalidateRelcacheByRelid (int ) ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int STATEXTDATASTXOID ;
 int STATEXTOID ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int StatisticExtDataRelationId ;
 int StatisticExtRelationId ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveStatisticsById(Oid statsOid)
{
 Relation relation;
 HeapTuple tup;
 Form_pg_statistic_ext statext;
 Oid relid;





 relation = table_open(StatisticExtDataRelationId, RowExclusiveLock);

 tup = SearchSysCache1(STATEXTDATASTXOID, ObjectIdGetDatum(statsOid));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for statistics data %u", statsOid);

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);





 relation = table_open(StatisticExtRelationId, RowExclusiveLock);

 tup = SearchSysCache1(STATEXTOID, ObjectIdGetDatum(statsOid));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for statistics object %u", statsOid);

 statext = (Form_pg_statistic_ext) GETSTRUCT(tup);
 relid = statext->stxrelid;

 CacheInvalidateRelcacheByRelid(relid);

 CatalogTupleDelete(relation, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relation, RowExclusiveLock);
}
