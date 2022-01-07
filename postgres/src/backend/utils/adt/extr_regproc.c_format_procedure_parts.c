
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * values; } ;
struct TYPE_4__ {int pronargs; TYPE_1__ proargtypes; int proname; int pronamespace; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int format_type_be_qualified (int ) ;
 int get_namespace_name_or_temp (int ) ;
 int * lappend (int *,int ) ;
 int * list_make2 (int ,int ) ;
 int pstrdup (int ) ;

void
format_procedure_parts(Oid procedure_oid, List **objnames, List **objargs)
{
 HeapTuple proctup;
 Form_pg_proc procform;
 int nargs;
 int i;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(procedure_oid));

 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for procedure with OID %u", procedure_oid);

 procform = (Form_pg_proc) GETSTRUCT(proctup);
 nargs = procform->pronargs;

 *objnames = list_make2(get_namespace_name_or_temp(procform->pronamespace),
         pstrdup(NameStr(procform->proname)));
 *objargs = NIL;
 for (i = 0; i < nargs; i++)
 {
  Oid thisargtype = procform->proargtypes.values[i];

  *objargs = lappend(*objargs, format_type_be_qualified(thisargtype));
 }

 ReleaseSysCache(proctup);
}
