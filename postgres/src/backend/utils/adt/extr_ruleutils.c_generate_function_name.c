
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pronamespace; int provariadic; int proname; } ;
typedef scalar_t__ ParseExprKind ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef scalar_t__ FuncDetailCode ;
typedef TYPE_1__* Form_pg_proc ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ EXPR_KIND_GROUP_BY ;
 scalar_t__ FUNCDETAIL_AGGREGATE ;
 scalar_t__ FUNCDETAIL_NORMAL ;
 scalar_t__ FUNCDETAIL_NOTFOUND ;
 scalar_t__ FUNCDETAIL_WINDOWFUNC ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int NIL ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ func_get_detail (int ,int ,int *,int,scalar_t__*,int,int,scalar_t__*,scalar_t__*,int*,int*,scalar_t__*,scalar_t__**,int *) ;
 char* get_namespace_name (int ) ;
 int list_make1 (int ) ;
 int makeString (char*) ;
 char* quote_qualified_identifier (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *
generate_function_name(Oid funcid, int nargs, List *argnames, Oid *argtypes,
        bool has_variadic, bool *use_variadic_p,
        ParseExprKind special_exprkind)
{
 char *result;
 HeapTuple proctup;
 Form_pg_proc procform;
 char *proname;
 bool use_variadic;
 char *nspname;
 FuncDetailCode p_result;
 Oid p_funcid;
 Oid p_rettype;
 bool p_retset;
 int p_nvargs;
 Oid p_vatype;
 Oid *p_true_typeids;
 bool force_qualify = 0;

 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(proctup);
 proname = NameStr(procform->proname);





 if (special_exprkind == EXPR_KIND_GROUP_BY)
 {
  if (strcmp(proname, "cube") == 0 || strcmp(proname, "rollup") == 0)
   force_qualify = 1;
 }
 if (use_variadic_p)
 {

  Assert(!has_variadic || OidIsValid(procform->provariadic));
  use_variadic = has_variadic;
  *use_variadic_p = use_variadic;
 }
 else
 {
  Assert(!has_variadic);
  use_variadic = 0;
 }
 if (!force_qualify)
  p_result = func_get_detail(list_make1(makeString(proname)),
           NIL, argnames, nargs, argtypes,
           !use_variadic, 1,
           &p_funcid, &p_rettype,
           &p_retset, &p_nvargs, &p_vatype,
           &p_true_typeids, ((void*)0));
 else
 {
  p_result = FUNCDETAIL_NOTFOUND;
  p_funcid = InvalidOid;
 }

 if ((p_result == FUNCDETAIL_NORMAL ||
   p_result == FUNCDETAIL_AGGREGATE ||
   p_result == FUNCDETAIL_WINDOWFUNC) &&
  p_funcid == funcid)
  nspname = ((void*)0);
 else
  nspname = get_namespace_name(procform->pronamespace);

 result = quote_qualified_identifier(nspname, proname);

 ReleaseSysCache(proctup);

 return result;
}
