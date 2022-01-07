
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcintype; int opcfamily; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAOID ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;

bool
get_opclass_opfamily_and_input_type(Oid opclass, Oid *opfamily, Oid *opcintype)
{
 HeapTuple tp;
 Form_pg_opclass cla_tup;

 tp = SearchSysCache1(CLAOID, ObjectIdGetDatum(opclass));
 if (!HeapTupleIsValid(tp))
  return 0;

 cla_tup = (Form_pg_opclass) GETSTRUCT(tp);

 *opfamily = cla_tup->opcfamily;
 *opcintype = cla_tup->opcintype;

 ReleaseSysCache(tp);

 return 1;
}
