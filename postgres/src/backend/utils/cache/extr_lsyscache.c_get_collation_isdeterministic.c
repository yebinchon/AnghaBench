
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collisdeterministic; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

bool
get_collation_isdeterministic(Oid colloid)
{
 HeapTuple tp;
 Form_pg_collation colltup;
 bool result;

 tp = SearchSysCache1(COLLOID, ObjectIdGetDatum(colloid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for collation %u", colloid);
 colltup = (Form_pg_collation) GETSTRUCT(tp);
 result = colltup->collisdeterministic;
 ReleaseSysCache(tp);
 return result;
}
