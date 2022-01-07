
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char relpersistence; } ;
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

char
get_rel_persistence(Oid relid)
{
 HeapTuple tp;
 Form_pg_class reltup;
 char result;

 tp = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 reltup = (Form_pg_class) GETSTRUCT(tp);
 result = reltup->relpersistence;
 ReleaseSysCache(tp);

 return result;
}
