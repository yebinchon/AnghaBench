
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_collation_name(Oid colloid)
{
 HeapTuple tp;

 tp = SearchSysCache1(COLLOID, ObjectIdGetDatum(colloid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_collation colltup = (Form_pg_collation) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(colltup->collname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
