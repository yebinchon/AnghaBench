
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relhassubclass; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

bool
has_subclass(Oid relationId)
{
 HeapTuple tuple;
 bool result;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relationId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relationId);

 result = ((Form_pg_class) GETSTRUCT(tuple))->relhassubclass;
 ReleaseSysCache(tuple);
 return result;
}
