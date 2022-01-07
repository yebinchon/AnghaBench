
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assignment {scalar_t__ value; int variable; struct assignment* next; } ;


 scalar_t__ ECPGd_count ;
 int ECPGnumeric_lvalue (int ) ;
 int ET_WARNING ;
 int PARSE_ERROR ;
 struct assignment* assignments ;
 int base_yyout ;
 int drop_assignments () ;
 int fprintf (int ,char*,...) ;
 int mmerror (int ,int ,char*,scalar_t__) ;
 int whenever_action (int) ;

void
output_set_descr_header(char *desc_name)
{
 struct assignment *results;

 fprintf(base_yyout, "{ ECPGset_desc_header(__LINE__, %s, (int)(", desc_name);
 for (results = assignments; results != ((void*)0); results = results->next)
 {
  if (results->value == ECPGd_count)
   ECPGnumeric_lvalue(results->variable);
  else
   mmerror(PARSE_ERROR, ET_WARNING, "descriptor header item \"%d\" does not exist", results->value);
 }

 drop_assignments();
 fprintf(base_yyout, "));\n");
 whenever_action(3);
}
