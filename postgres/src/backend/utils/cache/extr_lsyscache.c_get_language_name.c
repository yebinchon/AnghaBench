
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lanname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_language ;


 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int LANGOID ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* pstrdup (int ) ;

char *
get_language_name(Oid langoid, bool missing_ok)
{
 HeapTuple tp;

 tp = SearchSysCache1(LANGOID, ObjectIdGetDatum(langoid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_language lantup = (Form_pg_language) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(lantup->lanname));
  ReleaseSysCache(tp);
  return result;
 }

 if (!missing_ok)
  elog(ERROR, "cache lookup failed for language %u",
    langoid);
 return ((void*)0);
}
