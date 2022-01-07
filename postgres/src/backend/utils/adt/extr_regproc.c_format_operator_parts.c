
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oprright; scalar_t__ oprleft; int oprname; int oprnamespace; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int format_type_be_qualified (scalar_t__) ;
 int get_namespace_name_or_temp (int ) ;
 int * lappend (int *,int ) ;
 int * list_make2 (int ,int ) ;
 int pstrdup (int ) ;

void
format_operator_parts(Oid operator_oid, List **objnames, List **objargs)
{
 HeapTuple opertup;
 Form_pg_operator oprForm;

 opertup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operator_oid));
 if (!HeapTupleIsValid(opertup))
  elog(ERROR, "cache lookup failed for operator with OID %u",
    operator_oid);

 oprForm = (Form_pg_operator) GETSTRUCT(opertup);
 *objnames = list_make2(get_namespace_name_or_temp(oprForm->oprnamespace),
         pstrdup(NameStr(oprForm->oprname)));
 *objargs = NIL;
 if (oprForm->oprleft)
  *objargs = lappend(*objargs,
         format_type_be_qualified(oprForm->oprleft));
 if (oprForm->oprright)
  *objargs = lappend(*objargs,
         format_type_be_qualified(oprForm->oprright));

 ReleaseSysCache(opertup);
}
