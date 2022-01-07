
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int ATTNUM ;
 int Anum_pg_attribute_attfdwoptions ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,int ) ;
 int * untransformRelOptions (int ) ;

List *
GetForeignColumnOptions(Oid relid, AttrNumber attnum)
{
 List *options;
 HeapTuple tp;
 Datum datum;
 bool isnull;

 tp = SearchSysCache2(ATTNUM,
       ObjectIdGetDatum(relid),
       Int16GetDatum(attnum));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, relid);
 datum = SysCacheGetAttr(ATTNUM,
       tp,
       Anum_pg_attribute_attfdwoptions,
       &isnull);
 if (isnull)
  options = NIL;
 else
  options = untransformRelOptions(datum);

 ReleaseSysCache(tp);

 return options;
}
