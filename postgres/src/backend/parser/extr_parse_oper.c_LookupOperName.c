
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Oid ;
typedef int List ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int OpernameGetOprid (int *,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int op_signature_string (int *,char,int ,int ) ;
 int parser_errposition (int *,int) ;

Oid
LookupOperName(ParseState *pstate, List *opername, Oid oprleft, Oid oprright,
      bool noError, int location)
{
 Oid result;

 result = OpernameGetOprid(opername, oprleft, oprright);
 if (OidIsValid(result))
  return result;


 if (!noError)
 {
  char oprkind;

  if (!OidIsValid(oprleft))
   oprkind = 'l';
  else if (!OidIsValid(oprright))
   oprkind = 'r';
  else
   oprkind = 'b';

  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("operator does not exist: %s",
      op_signature_string(opername, oprkind,
           oprleft, oprright)),
     parser_errposition(pstate, location)));
 }

 return InvalidOid;
}
