
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * TupleDesc ;
struct TYPE_2__ {scalar_t__ prorettype; int prokind; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef int Datum ;


 int Anum_pg_proc_proallargtypes ;
 int Anum_pg_proc_proargmodes ;
 int Anum_pg_proc_proargnames ;
 int Assert (int) ;
 int GETSTRUCT (int ) ;
 int PROCOID ;
 int PointerGetDatum (int *) ;
 scalar_t__ RECORDOID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int * build_function_result_tupdesc_d (int ,int ,int ,int ) ;
 scalar_t__ heap_attisnull (int ,int ,int *) ;

TupleDesc
build_function_result_tupdesc_t(HeapTuple procTuple)
{
 Form_pg_proc procform = (Form_pg_proc) GETSTRUCT(procTuple);
 Datum proallargtypes;
 Datum proargmodes;
 Datum proargnames;
 bool isnull;


 if (procform->prorettype != RECORDOID)
  return ((void*)0);


 if (heap_attisnull(procTuple, Anum_pg_proc_proallargtypes, ((void*)0)) ||
  heap_attisnull(procTuple, Anum_pg_proc_proargmodes, ((void*)0)))
  return ((void*)0);


 proallargtypes = SysCacheGetAttr(PROCOID, procTuple,
          Anum_pg_proc_proallargtypes,
          &isnull);
 Assert(!isnull);
 proargmodes = SysCacheGetAttr(PROCOID, procTuple,
          Anum_pg_proc_proargmodes,
          &isnull);
 Assert(!isnull);
 proargnames = SysCacheGetAttr(PROCOID, procTuple,
          Anum_pg_proc_proargnames,
          &isnull);
 if (isnull)
  proargnames = PointerGetDatum(((void*)0));

 return build_function_result_tupdesc_d(procform->prokind,
             proallargtypes,
             proargmodes,
             proargnames);
}
