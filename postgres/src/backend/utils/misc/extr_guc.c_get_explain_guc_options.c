
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {int * variable; int boot_val; } ;
struct config_real {int * variable; int boot_val; } ;
struct config_int {int * variable; int boot_val; } ;
struct config_generic {int flags; int vartype; } ;
struct config_enum {int * variable; int boot_val; } ;
struct config_bool {int * variable; int boot_val; } ;


 int Assert (int) ;
 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 int ERROR ;
 int GUC_EXPLAIN ;
 int GUC_NO_SHOW_ALL ;
 int GUC_SUPERUSER_ONLY ;
 int GetUserId () ;





 int elog (int ,char*,int) ;
 struct config_generic** guc_variables ;
 int is_member_of_role (int ,int ) ;
 int num_guc_explain_variables ;
 int num_guc_variables ;
 struct config_generic** palloc (int) ;
 int strcmp (int ,int ) ;

struct config_generic **
get_explain_guc_options(int *num)
{
 int i;
 struct config_generic **result;

 *num = 0;






 result = palloc(sizeof(struct config_generic *) * num_guc_explain_variables);

 for (i = 0; i < num_guc_variables; i++)
 {
  bool modified;
  struct config_generic *conf = guc_variables[i];


  if ((conf->flags & GUC_NO_SHOW_ALL) ||
   ((conf->flags & GUC_SUPERUSER_ONLY) &&
    !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS)))
   continue;


  if (!(conf->flags & GUC_EXPLAIN))
   continue;


  modified = 0;

  switch (conf->vartype)
  {
   case 132:
    {
     struct config_bool *lconf = (struct config_bool *) conf;

     modified = (lconf->boot_val != *(lconf->variable));
    }
    break;

   case 130:
    {
     struct config_int *lconf = (struct config_int *) conf;

     modified = (lconf->boot_val != *(lconf->variable));
    }
    break;

   case 129:
    {
     struct config_real *lconf = (struct config_real *) conf;

     modified = (lconf->boot_val != *(lconf->variable));
    }
    break;

   case 128:
    {
     struct config_string *lconf = (struct config_string *) conf;

     modified = (strcmp(lconf->boot_val, *(lconf->variable)) != 0);
    }
    break;

   case 131:
    {
     struct config_enum *lconf = (struct config_enum *) conf;

     modified = (lconf->boot_val != *(lconf->variable));
    }
    break;

   default:
    elog(ERROR, "unexpected GUC type: %d", conf->vartype);
  }


  if (!modified)
   continue;


  result[*num] = conf;
  *num = *num + 1;

  Assert(*num <= num_guc_explain_variables);
 }

 return result;
}
