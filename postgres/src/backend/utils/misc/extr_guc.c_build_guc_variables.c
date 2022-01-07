
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; scalar_t__ name; int vartype; } ;
struct config_string {struct config_generic gen; } ;
struct config_real {struct config_generic gen; } ;
struct config_int {struct config_generic gen; } ;
struct config_enum {struct config_generic gen; } ;
struct config_bool {struct config_generic gen; } ;


 struct config_bool* ConfigureNamesBool ;
 struct config_enum* ConfigureNamesEnum ;
 struct config_int* ConfigureNamesInt ;
 struct config_real* ConfigureNamesReal ;
 struct config_string* ConfigureNamesString ;
 int FATAL ;
 int GUC_EXPLAIN ;
 int PGC_BOOL ;
 int PGC_ENUM ;
 int PGC_INT ;
 int PGC_REAL ;
 int PGC_STRING ;
 int free (struct config_generic**) ;
 scalar_t__ guc_malloc (int ,int) ;
 int guc_var_compare ;
 struct config_generic** guc_variables ;
 int num_guc_explain_variables ;
 int num_guc_variables ;
 int qsort (void*,int,int,int ) ;
 int size_guc_variables ;

void
build_guc_variables(void)
{
 int size_vars;
 int num_vars = 0;
 int num_explain_vars = 0;
 struct config_generic **guc_vars;
 int i;

 for (i = 0; ConfigureNamesBool[i].gen.name; i++)
 {
  struct config_bool *conf = &ConfigureNamesBool[i];


  conf->gen.vartype = PGC_BOOL;
  num_vars++;

  if (conf->gen.flags & GUC_EXPLAIN)
   num_explain_vars++;
 }

 for (i = 0; ConfigureNamesInt[i].gen.name; i++)
 {
  struct config_int *conf = &ConfigureNamesInt[i];

  conf->gen.vartype = PGC_INT;
  num_vars++;

  if (conf->gen.flags & GUC_EXPLAIN)
   num_explain_vars++;
 }

 for (i = 0; ConfigureNamesReal[i].gen.name; i++)
 {
  struct config_real *conf = &ConfigureNamesReal[i];

  conf->gen.vartype = PGC_REAL;
  num_vars++;

  if (conf->gen.flags & GUC_EXPLAIN)
   num_explain_vars++;
 }

 for (i = 0; ConfigureNamesString[i].gen.name; i++)
 {
  struct config_string *conf = &ConfigureNamesString[i];

  conf->gen.vartype = PGC_STRING;
  num_vars++;

  if (conf->gen.flags & GUC_EXPLAIN)
   num_explain_vars++;
 }

 for (i = 0; ConfigureNamesEnum[i].gen.name; i++)
 {
  struct config_enum *conf = &ConfigureNamesEnum[i];

  conf->gen.vartype = PGC_ENUM;
  num_vars++;

  if (conf->gen.flags & GUC_EXPLAIN)
   num_explain_vars++;
 }




 size_vars = num_vars + num_vars / 4;

 guc_vars = (struct config_generic **)
  guc_malloc(FATAL, size_vars * sizeof(struct config_generic *));

 num_vars = 0;

 for (i = 0; ConfigureNamesBool[i].gen.name; i++)
  guc_vars[num_vars++] = &ConfigureNamesBool[i].gen;

 for (i = 0; ConfigureNamesInt[i].gen.name; i++)
  guc_vars[num_vars++] = &ConfigureNamesInt[i].gen;

 for (i = 0; ConfigureNamesReal[i].gen.name; i++)
  guc_vars[num_vars++] = &ConfigureNamesReal[i].gen;

 for (i = 0; ConfigureNamesString[i].gen.name; i++)
  guc_vars[num_vars++] = &ConfigureNamesString[i].gen;

 for (i = 0; ConfigureNamesEnum[i].gen.name; i++)
  guc_vars[num_vars++] = &ConfigureNamesEnum[i].gen;

 if (guc_variables)
  free(guc_variables);
 guc_variables = guc_vars;
 num_guc_variables = num_vars;
 num_guc_explain_variables = num_explain_vars;
 size_guc_variables = size_vars;
 qsort((void *) guc_variables, num_guc_variables,
    sizeof(struct config_generic *), guc_var_compare);
}
