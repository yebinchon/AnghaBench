
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int nargs; TYPE_1__* args; } ;
struct TYPE_14__ {int ptype; scalar_t__ pflags; int isnull; int value; } ;
struct TYPE_13__ {int numParams; TYPE_5__* params; } ;
struct TYPE_12__ {TYPE_4__* paramLI; TYPE_2__* pinfo; } ;
struct TYPE_11__ {int * argtypes; } ;
struct TYPE_10__ {int isnull; int value; } ;
typedef TYPE_3__* SQLFunctionCachePtr ;
typedef TYPE_4__* ParamListInfo ;
typedef TYPE_5__ ParamExternData ;
typedef TYPE_6__* FunctionCallInfo ;


 int Assert (int) ;
 TYPE_4__* makeParamList (int) ;

__attribute__((used)) static void
postquel_sub_params(SQLFunctionCachePtr fcache,
     FunctionCallInfo fcinfo)
{
 int nargs = fcinfo->nargs;

 if (nargs > 0)
 {
  ParamListInfo paramLI;

  if (fcache->paramLI == ((void*)0))
  {
   paramLI = makeParamList(nargs);
   fcache->paramLI = paramLI;
  }
  else
  {
   paramLI = fcache->paramLI;
   Assert(paramLI->numParams == nargs);
  }

  for (int i = 0; i < nargs; i++)
  {
   ParamExternData *prm = &paramLI->params[i];

   prm->value = fcinfo->args[i].value;
   prm->isnull = fcinfo->args[i].isnull;
   prm->pflags = 0;
   prm->ptype = fcache->pinfo->argtypes[i];
  }
 }
 else
  fcache->paramLI = ((void*)0);
}
