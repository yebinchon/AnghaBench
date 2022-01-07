
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int dummy; } ;


 int Assert (char const*) ;
 int GUC_QUALIFIER_SEPARATOR ;
 struct config_generic* add_placeholder_variable (char const*,int) ;
 scalar_t__ bsearch (void*,void*,int ,int,int ) ;
 scalar_t__ guc_name_compare (char const*,char*) ;
 int guc_var_compare ;
 scalar_t__ guc_variables ;
 char** map_old_guc_names ;
 int num_guc_variables ;
 int * strchr (char const*,int ) ;

__attribute__((used)) static struct config_generic *
find_option(const char *name, bool create_placeholders, int elevel)
{
 const char **key = &name;
 struct config_generic **res;
 int i;

 Assert(name);





 res = (struct config_generic **) bsearch((void *) &key,
            (void *) guc_variables,
            num_guc_variables,
            sizeof(struct config_generic *),
            guc_var_compare);
 if (res)
  return *res;






 for (i = 0; map_old_guc_names[i] != ((void*)0); i += 2)
 {
  if (guc_name_compare(name, map_old_guc_names[i]) == 0)
   return find_option(map_old_guc_names[i + 1], 0, elevel);
 }

 if (create_placeholders)
 {



  if (strchr(name, GUC_QUALIFIER_SEPARATOR) != ((void*)0))
   return add_placeholder_variable(name, elevel);
 }


 return ((void*)0);
}
