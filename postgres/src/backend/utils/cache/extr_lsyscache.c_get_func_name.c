
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_func_name(Oid funcid)
{
 HeapTuple tp;

 tp = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_proc functup = (Form_pg_proc) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(functup->proname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
