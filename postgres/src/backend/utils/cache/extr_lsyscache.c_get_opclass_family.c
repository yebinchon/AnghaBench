
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcfamily; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

Oid
get_opclass_family(Oid opclass)
{
 HeapTuple tp;
 Form_pg_opclass cla_tup;
 Oid result;

 tp = SearchSysCache1(CLAOID, ObjectIdGetDatum(opclass));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for opclass %u", opclass);
 cla_tup = (Form_pg_opclass) GETSTRUCT(tp);

 result = cla_tup->opcfamily;
 ReleaseSysCache(tp);
 return result;
}
