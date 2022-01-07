
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {int amproc; } ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_amproc ;


 int AMPROCNUM ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache4 (int ,int ,int ,int ,int ) ;

Oid
get_opfamily_proc(Oid opfamily, Oid lefttype, Oid righttype, int16 procnum)
{
 HeapTuple tp;
 Form_pg_amproc amproc_tup;
 RegProcedure result;

 tp = SearchSysCache4(AMPROCNUM,
       ObjectIdGetDatum(opfamily),
       ObjectIdGetDatum(lefttype),
       ObjectIdGetDatum(righttype),
       Int16GetDatum(procnum));
 if (!HeapTupleIsValid(tp))
  return InvalidOid;
 amproc_tup = (Form_pg_amproc) GETSTRUCT(tp);
 result = amproc_tup->amproc;
 ReleaseSysCache(tp);
 return result;
}
