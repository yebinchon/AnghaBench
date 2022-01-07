
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int brace_level; int type; int name; } ;
struct assignment {int value; int variable; struct assignment* next; } ;




 int ECPGdump_a_type (int ,int ,int ,int ,int *,int *,int,int *,int *,char*,int *,int *) ;
 int ET_WARNING ;
 int PARSE_ERROR ;
 struct assignment* assignments ;
 int base_yyout ;
 int drop_assignments () ;
 struct variable* find_variable (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* get_dtype (int) ;
 char* mm_strdup (char*) ;
 int mmerror (int ,int ,char*) ;
 int whenever_action (int) ;

void
output_get_descr(char *desc_name, char *index)
{
 struct assignment *results;

 fprintf(base_yyout, "{ ECPGget_desc(__LINE__, %s, %s,", desc_name, index);
 for (results = assignments; results != ((void*)0); results = results->next)
 {
  const struct variable *v = find_variable(results->variable);
  char *str_zero = mm_strdup("0");

  switch (results->value)
  {
   case 128:
    mmerror(PARSE_ERROR, ET_WARNING, "nullable is always 1");
    break;
   case 129:
    mmerror(PARSE_ERROR, ET_WARNING, "key_member is always 0");
    break;
   default:
    break;
  }
  fprintf(base_yyout, "%s,", get_dtype(results->value));
  ECPGdump_a_type(base_yyout, v->name, v->type, v->brace_level,
      ((void*)0), ((void*)0), -1, ((void*)0), ((void*)0), str_zero, ((void*)0), ((void*)0));
  free(str_zero);
 }
 drop_assignments();
 fputs("ECPGd_EODT);\n", base_yyout);

 whenever_action(2 | 1);
}
