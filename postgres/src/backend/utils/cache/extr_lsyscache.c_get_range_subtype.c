
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rngsubtype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_range ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int RANGETYPE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

Oid
get_range_subtype(Oid rangeOid)
{
 HeapTuple tp;

 tp = SearchSysCache1(RANGETYPE, ObjectIdGetDatum(rangeOid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_range rngtup = (Form_pg_range) GETSTRUCT(tp);
  Oid result;

  result = rngtup->rngsubtype;
  ReleaseSysCache(tp);
  return result;
 }
 else
  return InvalidOid;
}
