
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nspname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_namespace ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NAMESPACEOID ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_namespace_name(Oid nspid)
{
 HeapTuple tp;

 tp = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(nspid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_namespace nsptup = (Form_pg_namespace) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(nsptup->nspname));
  ReleaseSysCache(tp);
  return result;
 }
 else
  return ((void*)0);
}
