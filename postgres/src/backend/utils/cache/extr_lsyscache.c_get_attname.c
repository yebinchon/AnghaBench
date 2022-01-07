
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATTNUM ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,int ,int ) ;
 char* pstrdup (int ) ;

char *
get_attname(Oid relid, AttrNumber attnum, bool missing_ok)
{
 HeapTuple tp;

 tp = SearchSysCache2(ATTNUM,
       ObjectIdGetDatum(relid), Int16GetDatum(attnum));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_attribute att_tup = (Form_pg_attribute) GETSTRUCT(tp);
  char *result;

  result = pstrdup(NameStr(att_tup->attname));
  ReleaseSysCache(tp);
  return result;
 }

 if (!missing_ok)
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, relid);
 return ((void*)0);
}
