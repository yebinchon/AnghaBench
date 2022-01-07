
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char attgenerated; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATTNUM ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,int ,int ) ;

char
get_attgenerated(Oid relid, AttrNumber attnum)
{
 HeapTuple tp;
 Form_pg_attribute att_tup;
 char result;

 tp = SearchSysCache2(ATTNUM,
       ObjectIdGetDatum(relid),
       Int16GetDatum(attnum));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, relid);
 att_tup = (Form_pg_attribute) GETSTRUCT(tp);
 result = att_tup->attgenerated;
 ReleaseSysCache(tp);
 return result;
}
