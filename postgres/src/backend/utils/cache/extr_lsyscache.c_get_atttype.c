
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atttypid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATTNUM ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;

Oid
get_atttype(Oid relid, AttrNumber attnum)
{
 HeapTuple tp;

 tp = SearchSysCache2(ATTNUM,
       ObjectIdGetDatum(relid),
       Int16GetDatum(attnum));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_attribute att_tup = (Form_pg_attribute) GETSTRUCT(tp);
  Oid result;

  result = att_tup->atttypid;
  ReleaseSysCache(tp);
  return result;
 }
 else
  return InvalidOid;
}
