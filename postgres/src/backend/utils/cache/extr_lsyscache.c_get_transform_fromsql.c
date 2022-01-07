
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trffromsql; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_transform ;


 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int TRFTYPELANG ;
 int list_member_oid (int *,int ) ;

Oid
get_transform_fromsql(Oid typid, Oid langid, List *trftypes)
{
 HeapTuple tup;

 if (!list_member_oid(trftypes, typid))
  return InvalidOid;

 tup = SearchSysCache2(TRFTYPELANG, typid, langid);
 if (HeapTupleIsValid(tup))
 {
  Oid funcid;

  funcid = ((Form_pg_transform) GETSTRUCT(tup))->trffromsql;
  ReleaseSysCache(tup);
  return funcid;
 }
 else
  return InvalidOid;
}
