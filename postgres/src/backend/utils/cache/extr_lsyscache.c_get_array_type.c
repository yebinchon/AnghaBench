
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typarray; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;

Oid
get_array_type(Oid typid)
{
 HeapTuple tp;
 Oid result = InvalidOid;

 tp = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (HeapTupleIsValid(tp))
 {
  result = ((Form_pg_type) GETSTRUCT(tp))->typarray;
  ReleaseSysCache(tp);
 }
 return result;
}
