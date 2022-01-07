
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typisdefined; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;

bool
get_typisdefined(Oid typid)
{
 HeapTuple tp;

 tp = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (HeapTupleIsValid(tp))
 {
  Form_pg_type typtup = (Form_pg_type) GETSTRUCT(tp);
  bool result;

  result = typtup->typisdefined;
  ReleaseSysCache(tp);
  return result;
 }
 else
  return 0;
}
