
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_bool {int* variable; int boot_val; int reset_val; int gen; int show_hook; int assign_hook; int check_hook; } ;
typedef int GucShowHook ;
typedef int GucContext ;
typedef int GucBoolCheckHook ;
typedef int GucBoolAssignHook ;


 int PGC_BOOL ;
 int define_custom_variable (int *) ;
 scalar_t__ init_custom_variable (char const*,char const*,char const*,int ,int,int ,int) ;

void
DefineCustomBoolVariable(const char *name,
       const char *short_desc,
       const char *long_desc,
       bool *valueAddr,
       bool bootValue,
       GucContext context,
       int flags,
       GucBoolCheckHook check_hook,
       GucBoolAssignHook assign_hook,
       GucShowHook show_hook)
{
 struct config_bool *var;

 var = (struct config_bool *)
  init_custom_variable(name, short_desc, long_desc, context, flags,
        PGC_BOOL, sizeof(struct config_bool));
 var->variable = valueAddr;
 var->boot_val = bootValue;
 var->reset_val = bootValue;
 var->check_hook = check_hook;
 var->assign_hook = assign_hook;
 var->show_hook = show_hook;
 define_custom_variable(&var->gen);
}
