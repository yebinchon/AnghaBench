
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_enum_entry {int dummy; } ;
struct config_enum {int* variable; int boot_val; int reset_val; int gen; int show_hook; int assign_hook; int check_hook; struct config_enum_entry const* options; } ;
typedef int GucShowHook ;
typedef int GucEnumCheckHook ;
typedef int GucEnumAssignHook ;
typedef int GucContext ;


 int PGC_ENUM ;
 int define_custom_variable (int *) ;
 scalar_t__ init_custom_variable (char const*,char const*,char const*,int ,int,int ,int) ;

void
DefineCustomEnumVariable(const char *name,
       const char *short_desc,
       const char *long_desc,
       int *valueAddr,
       int bootValue,
       const struct config_enum_entry *options,
       GucContext context,
       int flags,
       GucEnumCheckHook check_hook,
       GucEnumAssignHook assign_hook,
       GucShowHook show_hook)
{
 struct config_enum *var;

 var = (struct config_enum *)
  init_custom_variable(name, short_desc, long_desc, context, flags,
        PGC_ENUM, sizeof(struct config_enum));
 var->variable = valueAddr;
 var->boot_val = bootValue;
 var->reset_val = bootValue;
 var->options = options;
 var->check_hook = check_hook;
 var->assign_hook = assign_hook;
 var->show_hook = show_hook;
 define_custom_variable(&var->gen);
}
