
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_rel_name(Oid relid)
{
 HeapTuple tp;

 tp = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_class reltup = (Form_pg_class) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(reltup->relname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
