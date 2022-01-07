
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int MCVList ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_statistic_ext_data_stxdmcv ;
 int DatumGetByteaP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int STATEXTDATASTXOID ;
 int STATS_EXT_DEPENDENCIES ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,...) ;
 int * statext_mcv_deserialize (int ) ;

MCVList *
statext_mcv_load(Oid mvoid)
{
 MCVList *result;
 bool isnull;
 Datum mcvlist;
 HeapTuple htup = SearchSysCache1(STATEXTDATASTXOID, ObjectIdGetDatum(mvoid));

 if (!HeapTupleIsValid(htup))
  elog(ERROR, "cache lookup failed for statistics object %u", mvoid);

 mcvlist = SysCacheGetAttr(STATEXTDATASTXOID, htup,
         Anum_pg_statistic_ext_data_stxdmcv, &isnull);

 if (isnull)
  elog(ERROR,
    "requested statistic kind \"%c\" is not yet built for statistics object %u",
    STATS_EXT_DEPENDENCIES, mvoid);

 result = statext_mcv_deserialize(DatumGetByteaP(mcvlist));

 ReleaseSysCache(htup);

 return result;
}
