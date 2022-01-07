
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_opname(Oid opno)
{
 HeapTuple tp;

 tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_operator optup = (Form_pg_operator) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(optup->oprname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
