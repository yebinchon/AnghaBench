
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numParams; int * parserSetupArg; int * parserSetup; int * paramCompileArg; int * paramCompile; int * paramFetchArg; int * paramFetch; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__* ParamListInfo ;
typedef int ParamExternData ;


 int ParamListInfoData ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ palloc (scalar_t__) ;
 int params ;

ParamListInfo
makeParamList(int numParams)
{
 ParamListInfo retval;
 Size size;

 size = offsetof(ParamListInfoData, params) +
  numParams * sizeof(ParamExternData);

 retval = (ParamListInfo) palloc(size);
 retval->paramFetch = ((void*)0);
 retval->paramFetchArg = ((void*)0);
 retval->paramCompile = ((void*)0);
 retval->paramCompileArg = ((void*)0);
 retval->parserSetup = ((void*)0);
 retval->parserSetupArg = ((void*)0);
 retval->numParams = numParams;

 return retval;
}
