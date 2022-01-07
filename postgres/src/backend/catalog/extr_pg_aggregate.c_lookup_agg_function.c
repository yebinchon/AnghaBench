
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;
typedef scalar_t__ FuncDetailCode ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 scalar_t__ ANYOID ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ FUNCDETAIL_NORMAL ;
 int GetUserId () ;
 int IsBinaryCoercible (scalar_t__,scalar_t__) ;
 int NIL ;
 int OBJECT_FUNCTION ;
 int OidIsValid (scalar_t__) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 scalar_t__ enforce_generic_type_consistency (scalar_t__*,scalar_t__*,int,scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ func_get_detail (int *,int ,int ,int,scalar_t__*,int,int,scalar_t__*,scalar_t__*,int*,int*,scalar_t__*,scalar_t__**,int *) ;
 int func_signature_string (int *,int,int ,scalar_t__*) ;
 int get_func_name (scalar_t__) ;
 scalar_t__ pg_proc_aclcheck (scalar_t__,int ,int ) ;

__attribute__((used)) static Oid
lookup_agg_function(List *fnName,
     int nargs,
     Oid *input_types,
     Oid variadicArgType,
     Oid *rettype)
{
 Oid fnOid;
 bool retset;
 int nvargs;
 Oid vatype;
 Oid *true_oid_array;
 FuncDetailCode fdresult;
 AclResult aclresult;
 int i;
 fdresult = func_get_detail(fnName, NIL, NIL,
          nargs, input_types, 0, 0,
          &fnOid, rettype, &retset,
          &nvargs, &vatype,
          &true_oid_array, ((void*)0));


 if (fdresult != FUNCDETAIL_NORMAL || !OidIsValid(fnOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function %s does not exist",
      func_signature_string(fnName, nargs,
             NIL, input_types))));
 if (retset)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("function %s returns a set",
      func_signature_string(fnName, nargs,
             NIL, input_types))));
 if (variadicArgType == ANYOID && vatype != ANYOID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("function %s must accept VARIADIC ANY to be used in this aggregate",
      func_signature_string(fnName, nargs,
             NIL, input_types))));






 *rettype = enforce_generic_type_consistency(input_types,
            true_oid_array,
            nargs,
            *rettype,
            1);





 for (i = 0; i < nargs; i++)
 {
  if (!IsBinaryCoercible(input_types[i], true_oid_array[i]))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("function %s requires run-time type coercion",
       func_signature_string(fnName, nargs,
              NIL, true_oid_array))));
 }


 aclresult = pg_proc_aclcheck(fnOid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION, get_func_name(fnOid));

 return fnOid;
}
