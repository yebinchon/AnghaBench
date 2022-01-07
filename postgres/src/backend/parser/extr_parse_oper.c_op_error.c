
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Oid ;
typedef int List ;
typedef scalar_t__ FuncDetailCode ;


 int ERRCODE_AMBIGUOUS_FUNCTION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ FUNCDETAIL_MULTIPLE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int op_signature_string (int *,char,int ,int ) ;
 int parser_errposition (int *,int) ;

__attribute__((used)) static void
op_error(ParseState *pstate, List *op, char oprkind,
   Oid arg1, Oid arg2,
   FuncDetailCode fdresult, int location)
{
 if (fdresult == FUNCDETAIL_MULTIPLE)
  ereport(ERROR,
    (errcode(ERRCODE_AMBIGUOUS_FUNCTION),
     errmsg("operator is not unique: %s",
      op_signature_string(op, oprkind, arg1, arg2)),
     errhint("Could not choose a best candidate operator. "
       "You might need to add explicit type casts."),
     parser_errposition(pstate, location)));
 else
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("operator does not exist: %s",
      op_signature_string(op, oprkind, arg1, arg2)),
     (!arg1 || !arg2) ?
     errhint("No operator matches the given name and argument type. "
       "You might need to add an explicit type cast.") :
     errhint("No operator matches the given name and argument types. "
       "You might need to add explicit type casts."),
     parser_errposition(pstate, location)));
}
