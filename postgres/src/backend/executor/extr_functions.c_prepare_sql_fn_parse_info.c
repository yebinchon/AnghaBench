
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int values; } ;
struct TYPE_7__ {int pronargs; TYPE_1__ proargtypes; int proname; } ;
struct TYPE_6__ {int nargs; scalar_t__* argtypes; int * argnames; scalar_t__ collation; int fname; } ;
typedef TYPE_2__* SQLFunctionParseInfoPtr ;
typedef int SQLFunctionParseInfo ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;
typedef int Datum ;


 int Anum_pg_proc_proargmodes ;
 int Anum_pg_proc_proargnames ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsPolymorphicType (scalar_t__) ;
 int NameStr (int ) ;
 int PROCNAMEARGSNSP ;
 int PointerGetDatum (int *) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_call_expr_argtype (int *,int) ;
 int get_func_input_arg_names (int ,int ,int **) ;
 int memcpy (scalar_t__*,int ,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int pstrdup (int ) ;

SQLFunctionParseInfoPtr
prepare_sql_fn_parse_info(HeapTuple procedureTuple,
        Node *call_expr,
        Oid inputCollation)
{
 SQLFunctionParseInfoPtr pinfo;
 Form_pg_proc procedureStruct = (Form_pg_proc) GETSTRUCT(procedureTuple);
 int nargs;

 pinfo = (SQLFunctionParseInfoPtr) palloc0(sizeof(SQLFunctionParseInfo));


 pinfo->fname = pstrdup(NameStr(procedureStruct->proname));


 pinfo->collation = inputCollation;





 pinfo->nargs = nargs = procedureStruct->pronargs;
 if (nargs > 0)
 {
  Oid *argOidVect;
  int argnum;

  argOidVect = (Oid *) palloc(nargs * sizeof(Oid));
  memcpy(argOidVect,
      procedureStruct->proargtypes.values,
      nargs * sizeof(Oid));

  for (argnum = 0; argnum < nargs; argnum++)
  {
   Oid argtype = argOidVect[argnum];

   if (IsPolymorphicType(argtype))
   {
    argtype = get_call_expr_argtype(call_expr, argnum);
    if (argtype == InvalidOid)
     ereport(ERROR,
       (errcode(ERRCODE_DATATYPE_MISMATCH),
        errmsg("could not determine actual type of argument declared %s",
         format_type_be(argOidVect[argnum]))));
    argOidVect[argnum] = argtype;
   }
  }

  pinfo->argtypes = argOidVect;
 }




 if (nargs > 0)
 {
  Datum proargnames;
  Datum proargmodes;
  int n_arg_names;
  bool isNull;

  proargnames = SysCacheGetAttr(PROCNAMEARGSNSP, procedureTuple,
           Anum_pg_proc_proargnames,
           &isNull);
  if (isNull)
   proargnames = PointerGetDatum(((void*)0));

  proargmodes = SysCacheGetAttr(PROCNAMEARGSNSP, procedureTuple,
           Anum_pg_proc_proargmodes,
           &isNull);
  if (isNull)
   proargmodes = PointerGetDatum(((void*)0));

  n_arg_names = get_func_input_arg_names(proargnames, proargmodes,
              &pinfo->argnames);


  if (n_arg_names < nargs)
   pinfo->argnames = ((void*)0);
 }
 else
  pinfo->argnames = ((void*)0);

 return pinfo;
}
