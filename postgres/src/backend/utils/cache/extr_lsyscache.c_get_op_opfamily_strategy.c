
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amopstrategy; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_amop ;


 int AMOPOPID ;
 int AMOP_SEARCH ;
 int CharGetDatum (int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;

int
get_op_opfamily_strategy(Oid opno, Oid opfamily)
{
 HeapTuple tp;
 Form_pg_amop amop_tup;
 int result;

 tp = SearchSysCache3(AMOPOPID,
       ObjectIdGetDatum(opno),
       CharGetDatum(AMOP_SEARCH),
       ObjectIdGetDatum(opfamily));
 if (!HeapTupleIsValid(tp))
  return 0;
 amop_tup = (Form_pg_amop) GETSTRUCT(tp);
 result = amop_tup->amopstrategy;
 ReleaseSysCache(tp);
 return result;
}
