
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprright; int oprleft; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

void
op_input_types(Oid opno, Oid *lefttype, Oid *righttype)
{
 HeapTuple tp;
 Form_pg_operator optup;

 tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for operator %u", opno);
 optup = (Form_pg_operator) GETSTRUCT(tp);
 *lefttype = optup->oprleft;
 *righttype = optup->oprright;
 ReleaseSysCache(tp);
}
