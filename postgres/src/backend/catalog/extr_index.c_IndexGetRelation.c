
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ indexrelid; scalar_t__ indrelid; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_index ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;

Oid
IndexGetRelation(Oid indexId, bool missing_ok)
{
 HeapTuple tuple;
 Form_pg_index index;
 Oid result;

 tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(indexId));
 if (!HeapTupleIsValid(tuple))
 {
  if (missing_ok)
   return InvalidOid;
  elog(ERROR, "cache lookup failed for index %u", indexId);
 }
 index = (Form_pg_index) GETSTRUCT(tuple);
 Assert(index->indexrelid == indexId);

 result = index->indrelid;
 ReleaseSysCache(tuple);
 return result;
}
