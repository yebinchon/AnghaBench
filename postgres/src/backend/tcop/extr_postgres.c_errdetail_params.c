
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int value; int ptype; scalar_t__ isnull; } ;
struct TYPE_10__ {scalar_t__ numParams; TYPE_3__* params; int * paramFetch; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__* ParamListInfo ;
typedef TYPE_3__ ParamExternData ;
typedef int Oid ;
typedef int MemoryContext ;


 int Assert (int ) ;
 int IsAbortedTransactionBlockState () ;
 int MemoryContextSwitchTo (int ) ;
 int MessageContext ;
 int OidIsValid (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int) ;
 int appendStringInfoCharMacro (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int errdetail (char*,char*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;

__attribute__((used)) static int
errdetail_params(ParamListInfo params)
{

 if (params && params->numParams > 0 && !IsAbortedTransactionBlockState())
 {
  StringInfoData param_str;
  MemoryContext oldcontext;


  Assert(params->paramFetch == ((void*)0));


  oldcontext = MemoryContextSwitchTo(MessageContext);

  initStringInfo(&param_str);

  for (int paramno = 0; paramno < params->numParams; paramno++)
  {
   ParamExternData *prm = &params->params[paramno];
   Oid typoutput;
   bool typisvarlena;
   char *pstring;
   char *p;

   appendStringInfo(&param_str, "%s$%d = ",
        paramno > 0 ? ", " : "",
        paramno + 1);

   if (prm->isnull || !OidIsValid(prm->ptype))
   {
    appendStringInfoString(&param_str, "NULL");
    continue;
   }

   getTypeOutputInfo(prm->ptype, &typoutput, &typisvarlena);

   pstring = OidOutputFunctionCall(typoutput, prm->value);

   appendStringInfoCharMacro(&param_str, '\'');
   for (p = pstring; *p; p++)
   {
    if (*p == '\'')
     appendStringInfoCharMacro(&param_str, *p);
    appendStringInfoCharMacro(&param_str, *p);
   }
   appendStringInfoCharMacro(&param_str, '\'');

   pfree(pstring);
  }

  errdetail("parameters: %s", param_str.data);

  pfree(param_str.data);

  MemoryContextSwitchTo(oldcontext);
 }

 return 0;
}
