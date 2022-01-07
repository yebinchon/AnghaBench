
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int MVNDistinct ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_statistic_ext_data_stxdndistinct ;
 int DatumGetByteaPP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int STATEXTDATASTXOID ;
 int STATS_EXT_NDISTINCT ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,...) ;
 int * statext_ndistinct_deserialize (int ) ;

MVNDistinct *
statext_ndistinct_load(Oid mvoid)
{
 MVNDistinct *result;
 bool isnull;
 Datum ndist;
 HeapTuple htup;

 htup = SearchSysCache1(STATEXTDATASTXOID, ObjectIdGetDatum(mvoid));
 if (!HeapTupleIsValid(htup))
  elog(ERROR, "cache lookup failed for statistics object %u", mvoid);

 ndist = SysCacheGetAttr(STATEXTDATASTXOID, htup,
       Anum_pg_statistic_ext_data_stxdndistinct, &isnull);
 if (isnull)
  elog(ERROR,
    "requested statistic kind \"%c\" is not yet built for statistics object %u",
    STATS_EXT_NDISTINCT, mvoid);

 result = statext_ndistinct_deserialize(DatumGetByteaPP(ndist));

 ReleaseSysCache(htup);

 return result;
}
