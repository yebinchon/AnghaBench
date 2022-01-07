
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reloftype; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ typeOrDomainTypeRelid (scalar_t__) ;

__attribute__((used)) static bool
typeIsOfTypedTable(Oid reltypeId, Oid reloftypeId)
{
 Oid relid = typeOrDomainTypeRelid(reltypeId);
 bool result = 0;

 if (relid)
 {
  HeapTuple tp;
  Form_pg_class reltup;

  tp = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
  if (!HeapTupleIsValid(tp))
   elog(ERROR, "cache lookup failed for relation %u", relid);

  reltup = (Form_pg_class) GETSTRUCT(tp);
  if (reltup->reloftype == reloftypeId)
   result = 1;

  ReleaseSysCache(tp);
 }

 return result;
}
