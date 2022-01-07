
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int CONSTROID ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_constraint_name(Oid conoid)
{
 HeapTuple tp;

 tp = SearchSysCache1(CONSTROID, ObjectIdGetDatum(conoid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_constraint contup = (Form_pg_constraint) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(contup->conname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
