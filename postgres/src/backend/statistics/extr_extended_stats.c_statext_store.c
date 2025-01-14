
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
typedef int bytea ;
typedef int VacAttrStats ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int MVNDistinct ;
typedef int MVDependencies ;
typedef int MCVList ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_statistic_ext_data_stxddependencies ;
 int Anum_pg_statistic_ext_data_stxdmcv ;
 int Anum_pg_statistic_ext_data_stxdndistinct ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Natts_pg_statistic_ext_data ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int STATEXTDATASTXOID ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int StatisticExtDataRelationId ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int * statext_dependencies_serialize (int *) ;
 int * statext_mcv_serialize (int *,int **) ;
 int * statext_ndistinct_serialize (int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
statext_store(Oid statOid,
     MVNDistinct *ndistinct, MVDependencies *dependencies,
     MCVList *mcv, VacAttrStats **stats)
{
 HeapTuple stup,
    oldtup;
 Datum values[Natts_pg_statistic_ext_data];
 bool nulls[Natts_pg_statistic_ext_data];
 bool replaces[Natts_pg_statistic_ext_data];
 Relation pg_stextdata;

 memset(nulls, 1, sizeof(nulls));
 memset(replaces, 0, sizeof(replaces));
 memset(values, 0, sizeof(values));





 if (ndistinct != ((void*)0))
 {
  bytea *data = statext_ndistinct_serialize(ndistinct);

  nulls[Anum_pg_statistic_ext_data_stxdndistinct - 1] = (data == ((void*)0));
  values[Anum_pg_statistic_ext_data_stxdndistinct - 1] = PointerGetDatum(data);
 }

 if (dependencies != ((void*)0))
 {
  bytea *data = statext_dependencies_serialize(dependencies);

  nulls[Anum_pg_statistic_ext_data_stxddependencies - 1] = (data == ((void*)0));
  values[Anum_pg_statistic_ext_data_stxddependencies - 1] = PointerGetDatum(data);
 }
 if (mcv != ((void*)0))
 {
  bytea *data = statext_mcv_serialize(mcv, stats);

  nulls[Anum_pg_statistic_ext_data_stxdmcv - 1] = (data == ((void*)0));
  values[Anum_pg_statistic_ext_data_stxdmcv - 1] = PointerGetDatum(data);
 }


 replaces[Anum_pg_statistic_ext_data_stxdndistinct - 1] = 1;
 replaces[Anum_pg_statistic_ext_data_stxddependencies - 1] = 1;
 replaces[Anum_pg_statistic_ext_data_stxdmcv - 1] = 1;


 oldtup = SearchSysCache1(STATEXTDATASTXOID, ObjectIdGetDatum(statOid));
 if (!HeapTupleIsValid(oldtup))
  elog(ERROR, "cache lookup failed for statistics object %u", statOid);


 pg_stextdata = table_open(StatisticExtDataRelationId, RowExclusiveLock);

 stup = heap_modify_tuple(oldtup,
        RelationGetDescr(pg_stextdata),
        values,
        nulls,
        replaces);
 ReleaseSysCache(oldtup);
 CatalogTupleUpdate(pg_stextdata, &stup->t_self, stup);

 heap_freetuple(stup);

 table_close(pg_stextdata, RowExclusiveLock);
}
