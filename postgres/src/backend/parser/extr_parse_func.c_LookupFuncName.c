
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int FuncLookupError ;


 int ERRCODE_AMBIGUOUS_FUNCTION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;


 int InvalidOid ;
 int LookupFuncNameInternal (int *,int,int const*,int,int*) ;
 int NIL ;
 int NameListToString (int *) ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int func_signature_string (int *,int,int ,int const*) ;

Oid
LookupFuncName(List *funcname, int nargs, const Oid *argtypes, bool missing_ok)
{
 Oid funcoid;
 FuncLookupError lookupError;

 funcoid = LookupFuncNameInternal(funcname, nargs, argtypes, missing_ok,
          &lookupError);

 if (OidIsValid(funcoid))
  return funcoid;

 switch (lookupError)
 {
  case 128:

   if (missing_ok)
    return InvalidOid;

   if (nargs < 0)
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("could not find a function named \"%s\"",
        NameListToString(funcname))));
   else
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("function %s does not exist",
        func_signature_string(funcname, nargs,
               NIL, argtypes))));
   break;

  case 129:

   ereport(ERROR,
     (errcode(ERRCODE_AMBIGUOUS_FUNCTION),
      errmsg("function name \"%s\" is not unique",
       NameListToString(funcname)),
      errhint("Specify the argument list to select the function unambiguously.")));
   break;
 }

 return InvalidOid;
}
