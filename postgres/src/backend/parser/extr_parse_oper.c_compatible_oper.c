
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprright; int oprleft; } ;
typedef int ParseState ;
typedef scalar_t__ Operator ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__* Form_pg_operator ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (scalar_t__) ;
 scalar_t__ IsBinaryCoercible (int ,int ) ;
 int ReleaseSysCache (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int op_signature_string (int *,char,int ,int ) ;
 scalar_t__ oper (int *,int *,int ,int ,int,int) ;
 int parser_errposition (int *,int) ;

Operator
compatible_oper(ParseState *pstate, List *op, Oid arg1, Oid arg2,
    bool noError, int location)
{
 Operator optup;
 Form_pg_operator opform;


 optup = oper(pstate, op, arg1, arg2, noError, location);
 if (optup == (Operator) ((void*)0))
  return (Operator) ((void*)0);


 opform = (Form_pg_operator) GETSTRUCT(optup);
 if (IsBinaryCoercible(arg1, opform->oprleft) &&
  IsBinaryCoercible(arg2, opform->oprright))
  return optup;


 ReleaseSysCache(optup);

 if (!noError)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("operator requires run-time type coercion: %s",
      op_signature_string(op, 'b', arg1, arg2)),
     parser_errposition(pstate, location)));

 return (Operator) ((void*)0);
}
