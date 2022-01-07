
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aggsortop; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_aggregate ;


 int AGGFNOID ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

__attribute__((used)) static Oid
fetch_agg_sort_op(Oid aggfnoid)
{
 HeapTuple aggTuple;
 Form_pg_aggregate aggform;
 Oid aggsortop;


 aggTuple = SearchSysCache1(AGGFNOID, ObjectIdGetDatum(aggfnoid));
 if (!HeapTupleIsValid(aggTuple))
  return InvalidOid;
 aggform = (Form_pg_aggregate) GETSTRUCT(aggTuple);
 aggsortop = aggform->aggsortop;
 ReleaseSysCache(aggTuple);

 return aggsortop;
}
