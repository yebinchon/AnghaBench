
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {int amopopr; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_amop ;


 int AMOPSTRATEGY ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache4 (int ,int ,int ,int ,int ) ;

Oid
get_opfamily_member(Oid opfamily, Oid lefttype, Oid righttype,
     int16 strategy)
{
 HeapTuple tp;
 Form_pg_amop amop_tup;
 Oid result;

 tp = SearchSysCache4(AMOPSTRATEGY,
       ObjectIdGetDatum(opfamily),
       ObjectIdGetDatum(lefttype),
       ObjectIdGetDatum(righttype),
       Int16GetDatum(strategy));
 if (!HeapTupleIsValid(tp))
  return InvalidOid;
 amop_tup = (Form_pg_amop) GETSTRUCT(tp);
 result = amop_tup->amopopr;
 ReleaseSysCache(tp);
 return result;
}
