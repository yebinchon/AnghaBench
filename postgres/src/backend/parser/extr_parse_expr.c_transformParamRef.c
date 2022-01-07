
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int location; int number; } ;
struct TYPE_8__ {int * (* p_paramref_hook ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef TYPE_1__ ParseState ;
typedef TYPE_2__ ParamRef ;
typedef int Node ;


 int ERRCODE_UNDEFINED_PARAMETER ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int parser_errposition (TYPE_1__*,int ) ;
 int * stub1 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static Node *
transformParamRef(ParseState *pstate, ParamRef *pref)
{
 Node *result;





 if (pstate->p_paramref_hook != ((void*)0))
  result = pstate->p_paramref_hook(pstate, pref);
 else
  result = ((void*)0);

 if (result == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_PARAMETER),
     errmsg("there is no parameter $%d", pref->number),
     parser_errposition(pstate, pref->location)));

 return result;
}
