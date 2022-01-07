
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int MVDependencies ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_statistic_ext_data_stxddependencies ;
 int DatumGetByteaPP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int STATEXTDATASTXOID ;
 int STATS_EXT_DEPENDENCIES ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,...) ;
 int * statext_dependencies_deserialize (int ) ;

MVDependencies *
statext_dependencies_load(Oid mvoid)
{
 MVDependencies *result;
 bool isnull;
 Datum deps;
 HeapTuple htup;

 htup = SearchSysCache1(STATEXTDATASTXOID, ObjectIdGetDatum(mvoid));
 if (!HeapTupleIsValid(htup))
  elog(ERROR, "cache lookup failed for statistics object %u", mvoid);

 deps = SysCacheGetAttr(STATEXTDATASTXOID, htup,
         Anum_pg_statistic_ext_data_stxddependencies, &isnull);
 if (isnull)
  elog(ERROR,
    "requested statistic kind \"%c\" is not yet built for statistics object %u",
    STATS_EXT_DEPENDENCIES, mvoid);

 result = statext_dependencies_deserialize(DatumGetByteaPP(deps));

 ReleaseSysCache(htup);

 return result;
}
