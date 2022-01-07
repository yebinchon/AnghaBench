
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int truncate_check_rel (int ,int ) ;

__attribute__((used)) static void
RangeVarCallbackForTruncate(const RangeVar *relation,
       Oid relId, Oid oldRelId, void *arg)
{
 HeapTuple tuple;


 if (!OidIsValid(relId))
  return;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relId);

 truncate_check_rel(relId, (Form_pg_class) GETSTRUCT(tuple));

 ReleaseSysCache(tuple);
}
