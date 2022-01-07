
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int* numParams; scalar_t__** paramTypes; } ;
typedef TYPE_1__ VarParamState ;
struct TYPE_9__ {scalar_t__ paramkind; scalar_t__ paramtype; int paramid; int location; int paramtypmod; int paramcollid; } ;
struct TYPE_8__ {scalar_t__ p_ref_hook_state; } ;
typedef TYPE_2__ ParseState ;
typedef TYPE_3__ Param ;
typedef scalar_t__ Oid ;
typedef int Node ;


 int ERRCODE_AMBIGUOUS_PARAMETER ;
 int ERRCODE_UNDEFINED_PARAMETER ;
 int ERROR ;
 scalar_t__ PARAM_EXTERN ;
 scalar_t__ UNKNOWNOID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*,int) ;
 int format_type_be (scalar_t__) ;
 int get_typcollation (scalar_t__) ;
 int parser_errposition (TYPE_2__*,int) ;

__attribute__((used)) static Node *
variable_coerce_param_hook(ParseState *pstate, Param *param,
         Oid targetTypeId, int32 targetTypeMod,
         int location)
{
 if (param->paramkind == PARAM_EXTERN && param->paramtype == UNKNOWNOID)
 {




  VarParamState *parstate = (VarParamState *) pstate->p_ref_hook_state;
  Oid *paramTypes = *parstate->paramTypes;
  int paramno = param->paramid;

  if (paramno <= 0 ||
   paramno > *parstate->numParams)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_PARAMETER),
      errmsg("there is no parameter $%d", paramno),
      parser_errposition(pstate, param->location)));

  if (paramTypes[paramno - 1] == UNKNOWNOID)
  {

   paramTypes[paramno - 1] = targetTypeId;
  }
  else if (paramTypes[paramno - 1] == targetTypeId)
  {

  }
  else
  {

   ereport(ERROR,
     (errcode(ERRCODE_AMBIGUOUS_PARAMETER),
      errmsg("inconsistent types deduced for parameter $%d",
       paramno),
      errdetail("%s versus %s",
          format_type_be(paramTypes[paramno - 1]),
          format_type_be(targetTypeId)),
      parser_errposition(pstate, param->location)));
  }

  param->paramtype = targetTypeId;
  param->paramtypmod = -1;






  param->paramcollid = get_typcollation(param->paramtype);


  if (location >= 0 &&
   (param->location < 0 || location < param->location))
   param->location = location;

  return (Node *) param;
 }


 return ((void*)0);
}
