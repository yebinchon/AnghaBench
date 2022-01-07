
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proretset; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

bool
get_func_retset(Oid funcid)
{
 HeapTuple tp;
 bool result;

 tp = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for function %u", funcid);

 result = ((Form_pg_proc) GETSTRUCT(tp))->proretset;
 ReleaseSysCache(tp);
 return result;
}
