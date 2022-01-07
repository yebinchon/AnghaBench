
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int Oid ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_class ;


 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int renameatt_check (int ,scalar_t__,int) ;

__attribute__((used)) static void
RangeVarCallbackForRenameAttribute(const RangeVar *rv, Oid relid, Oid oldrelid,
           void *arg)
{
 HeapTuple tuple;
 Form_pg_class form;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  return;
 form = (Form_pg_class) GETSTRUCT(tuple);
 renameatt_check(relid, form, 0);
 ReleaseSysCache(tuple);
}
