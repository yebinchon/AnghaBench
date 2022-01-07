
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int brace_level; int type; int name; } ;
struct assignment {int value; int variable; struct assignment* next; } ;
 int ECPGdump_a_type (int ,int ,int ,int ,int *,int *,int,int *,int *,char*,int *,int *) ;
 int PARSE_ERROR ;
 struct assignment* assignments ;
 int base_yyout ;
 int descriptor_item_name (int) ;
 int drop_assignments () ;
 struct variable* find_variable (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* get_dtype (int) ;
 char* mm_strdup (char*) ;
 int mmfatal (int ,char*,int ) ;
 int whenever_action (int) ;

void
output_set_descr(char *desc_name, char *index)
{
 struct assignment *results;

 fprintf(base_yyout, "{ ECPGset_desc(__LINE__, %s, %s,", desc_name, index);
 for (results = assignments; results != ((void*)0); results = results->next)
 {
  const struct variable *v = find_variable(results->variable);

  switch (results->value)
  {
   case 142:
   case 140:
   case 139:
   case 132:
   case 129:
    mmfatal(PARSE_ERROR, "descriptor item \"%s\" is not implemented",
      descriptor_item_name(results->value));
    break;

   case 137:
   case 135:
   case 134:
   case 133:
   case 131:
   case 130:
    mmfatal(PARSE_ERROR, "descriptor item \"%s\" cannot be set",
      descriptor_item_name(results->value));
    break;

   case 141:
   case 138:
   case 136:
   case 128:
    {
     char *str_zero = mm_strdup("0");

     fprintf(base_yyout, "%s,", get_dtype(results->value));
     ECPGdump_a_type(base_yyout, v->name, v->type, v->brace_level,
         ((void*)0), ((void*)0), -1, ((void*)0), ((void*)0), str_zero, ((void*)0), ((void*)0));
     free(str_zero);
    }
    break;

   default:
    ;
  }
 }
 drop_assignments();
 fputs("ECPGd_EODT);\n", base_yyout);

 whenever_action(2 | 1);
}
