
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_execstate ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int Datum ;


 int MemoryContextSwitchTo (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int get_eval_mcontext (int *) ;

__attribute__((used)) static char *
convert_value_to_string(PLpgSQL_execstate *estate, Datum value, Oid valtype)
{
 char *result;
 MemoryContext oldcontext;
 Oid typoutput;
 bool typIsVarlena;

 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
 getTypeOutputInfo(valtype, &typoutput, &typIsVarlena);
 result = OidOutputFunctionCall(typoutput, value);
 MemoryContextSwitchTo(oldcontext);

 return result;
}
