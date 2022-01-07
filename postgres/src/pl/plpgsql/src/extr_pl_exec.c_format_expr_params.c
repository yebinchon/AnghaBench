
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_17__ {scalar_t__* datums; } ;
struct TYPE_16__ {int paramnos; } ;
struct TYPE_15__ {int refname; } ;
struct TYPE_14__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ PLpgSQL_var ;
typedef TYPE_3__ PLpgSQL_expr ;
typedef TYPE_4__ PLpgSQL_execstate ;
typedef int PLpgSQL_datum ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int Datum ;


 int MemoryContextSwitchTo (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int ) ;
 int appendStringInfoCharMacro (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int bms_next_member (int ,int) ;
 char* convert_value_to_string (TYPE_4__*,int ,int ) ;
 int exec_eval_datum (TYPE_4__*,int *,int *,int *,int *,int*) ;
 int get_eval_mcontext (TYPE_4__*) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static char *
format_expr_params(PLpgSQL_execstate *estate,
       const PLpgSQL_expr *expr)
{
 int paramno;
 int dno;
 StringInfoData paramstr;
 MemoryContext oldcontext;

 if (!expr->paramnos)
  return ((void*)0);

 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));

 initStringInfo(&paramstr);
 paramno = 0;
 dno = -1;
 while ((dno = bms_next_member(expr->paramnos, dno)) >= 0)
 {
  Datum paramdatum;
  Oid paramtypeid;
  bool paramisnull;
  int32 paramtypmod;
  PLpgSQL_var *curvar;

  curvar = (PLpgSQL_var *) estate->datums[dno];

  exec_eval_datum(estate, (PLpgSQL_datum *) curvar,
      &paramtypeid, &paramtypmod,
      &paramdatum, &paramisnull);

  appendStringInfo(&paramstr, "%s%s = ",
       paramno > 0 ? ", " : "",
       curvar->refname);

  if (paramisnull)
   appendStringInfoString(&paramstr, "NULL");
  else
  {
   char *value = convert_value_to_string(estate, paramdatum, paramtypeid);
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

  paramno++;
 }

 MemoryContextSwitchTo(oldcontext);

 return paramstr.data;
}
