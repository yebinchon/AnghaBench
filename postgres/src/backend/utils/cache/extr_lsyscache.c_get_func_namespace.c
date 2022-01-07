
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pronamespace; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

Oid
get_func_namespace(Oid funcid)
{
 HeapTuple tp;

 tp = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_proc functup = (Form_pg_proc) GETSTRUCT(tp);
  Oid result;

  result = functup->pronamespace;
  ReleaseSysCache(tp);
  return result;
 }
 else
  return InvalidOid;
}
