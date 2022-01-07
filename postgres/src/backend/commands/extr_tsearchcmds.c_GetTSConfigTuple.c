
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;


 int ERROR ;
 int HeapTupleIsValid (int *) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int * SearchSysCache1 (int ,int ) ;
 int TSCONFIGOID ;
 int elog (int ,char*,int ) ;
 int get_ts_config_oid (int *,int) ;

__attribute__((used)) static HeapTuple
GetTSConfigTuple(List *names)
{
 HeapTuple tup;
 Oid cfgId;

 cfgId = get_ts_config_oid(names, 1);
 if (!OidIsValid(cfgId))
  return ((void*)0);

 tup = SearchSysCache1(TSCONFIGOID, ObjectIdGetDatum(cfgId));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for text search configuration %u",
    cfgId);

 return tup;
}
