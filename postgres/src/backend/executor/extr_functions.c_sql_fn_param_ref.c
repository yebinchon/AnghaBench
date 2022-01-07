
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int number; int location; } ;
struct TYPE_8__ {int p_ref_hook_state; } ;
struct TYPE_7__ {int nargs; } ;
typedef TYPE_1__* SQLFunctionParseInfoPtr ;
typedef TYPE_2__ ParseState ;
typedef TYPE_3__ ParamRef ;
typedef int Node ;


 int * sql_fn_make_param (TYPE_1__*,int,int ) ;

__attribute__((used)) static Node *
sql_fn_param_ref(ParseState *pstate, ParamRef *pref)
{
 SQLFunctionParseInfoPtr pinfo = (SQLFunctionParseInfoPtr) pstate->p_ref_hook_state;
 int paramno = pref->number;


 if (paramno <= 0 || paramno > pinfo->nargs)
  return ((void*)0);

 return sql_fn_make_param(pinfo, paramno, pref->location);
}
