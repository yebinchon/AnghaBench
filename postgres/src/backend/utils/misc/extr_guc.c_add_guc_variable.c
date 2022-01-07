
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int dummy; } ;


 scalar_t__ guc_malloc (int,int) ;
 scalar_t__ guc_realloc (int,struct config_generic**,int) ;
 int guc_var_compare ;
 struct config_generic** guc_variables ;
 int num_guc_variables ;
 int qsort (void*,int,int,int ) ;
 int size_guc_variables ;

__attribute__((used)) static bool
add_guc_variable(struct config_generic *var, int elevel)
{
 if (num_guc_variables + 1 >= size_guc_variables)
 {



  int size_vars = size_guc_variables + size_guc_variables / 4;
  struct config_generic **guc_vars;

  if (size_vars == 0)
  {
   size_vars = 100;
   guc_vars = (struct config_generic **)
    guc_malloc(elevel, size_vars * sizeof(struct config_generic *));
  }
  else
  {
   guc_vars = (struct config_generic **)
    guc_realloc(elevel, guc_variables, size_vars * sizeof(struct config_generic *));
  }

  if (guc_vars == ((void*)0))
   return 0;

  guc_variables = guc_vars;
  size_guc_variables = size_vars;
 }
 guc_variables[num_guc_variables++] = var;
 qsort((void *) guc_variables, num_guc_variables,
    sizeof(struct config_generic *), guc_var_compare);
 return 1;
}
