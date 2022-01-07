
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amopsortfamily; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_amop ;


 int AMOPOPID ;
 int AMOP_ORDER ;
 int CharGetDatum (int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;

Oid
get_op_opfamily_sortfamily(Oid opno, Oid opfamily)
{
 HeapTuple tp;
 Form_pg_amop amop_tup;
 Oid result;

 tp = SearchSysCache3(AMOPOPID,
       ObjectIdGetDatum(opno),
       CharGetDatum(AMOP_ORDER),
       ObjectIdGetDatum(opfamily));
 if (!HeapTupleIsValid(tp))
  return InvalidOid;
 amop_tup = (Form_pg_amop) GETSTRUCT(tp);
 result = amop_tup->amopsortfamily;
 ReleaseSysCache(tp);
 return result;
}
