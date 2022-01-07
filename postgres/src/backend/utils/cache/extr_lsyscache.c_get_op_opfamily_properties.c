
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amopstrategy; int amoprighttype; int amoplefttype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_amop ;


 int AMOPOPID ;
 int AMOP_ORDER ;
 int AMOP_SEARCH ;
 int CharGetDatum (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 int elog (int ,char*,int ,int ) ;

void
get_op_opfamily_properties(Oid opno, Oid opfamily, bool ordering_op,
         int *strategy,
         Oid *lefttype,
         Oid *righttype)
{
 HeapTuple tp;
 Form_pg_amop amop_tup;

 tp = SearchSysCache3(AMOPOPID,
       ObjectIdGetDatum(opno),
       CharGetDatum(ordering_op ? AMOP_ORDER : AMOP_SEARCH),
       ObjectIdGetDatum(opfamily));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "operator %u is not a member of opfamily %u",
    opno, opfamily);
 amop_tup = (Form_pg_amop) GETSTRUCT(tp);
 *strategy = amop_tup->amopstrategy;
 *lefttype = amop_tup->amoplefttype;
 *righttype = amop_tup->amoprighttype;
 ReleaseSysCache(tp);
}
