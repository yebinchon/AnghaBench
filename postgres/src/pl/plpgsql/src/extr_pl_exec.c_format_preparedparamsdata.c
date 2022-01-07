
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nargs; char* nulls; int * types; int * values; } ;
struct TYPE_8__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ PreparedParamsData ;
typedef int PLpgSQL_execstate ;
typedef int MemoryContext ;


 int MemoryContextSwitchTo (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int) ;
 int appendStringInfoCharMacro (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 char* convert_value_to_string (int *,int ,int ) ;
 int get_eval_mcontext (int *) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static char *
format_preparedparamsdata(PLpgSQL_execstate *estate,
        const PreparedParamsData *ppd)
{
 int paramno;
 StringInfoData paramstr;
 MemoryContext oldcontext;

 if (!ppd)
  return ((void*)0);

 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));

 initStringInfo(&paramstr);
 for (paramno = 0; paramno < ppd->nargs; paramno++)
 {
  appendStringInfo(&paramstr, "%s$%d = ",
       paramno > 0 ? ", " : "",
       paramno + 1);

  if (ppd->nulls[paramno] == 'n')
   appendStringInfoString(&paramstr, "NULL");
  else
  {
   char *value = convert_value_to_string(estate, ppd->values[paramno], ppd->types[paramno]);
   char *p;

   appendStringInfoCharMacro(&paramstr, '\'');
   for (p = value; *p; p++)
   {
    if (*p == '\'')
     appendStringInfoCharMacro(&paramstr, *p);
    appendStringInfoCharMacro(&paramstr, *p);
   }
   appendStringInfoCharMacro(&paramstr, '\'');
  }
 }

 MemoryContextSwitchTo(oldcontext);

 return paramstr.data;
}
