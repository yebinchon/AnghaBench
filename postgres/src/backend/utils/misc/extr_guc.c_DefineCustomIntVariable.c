
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_int {int* variable; int boot_val; int reset_val; int min; int max; int gen; int show_hook; int assign_hook; int check_hook; } ;
typedef int GucShowHook ;
typedef int GucIntCheckHook ;
typedef int GucIntAssignHook ;
typedef int GucContext ;


 int PGC_INT ;
 int define_custom_variable (int *) ;
 scalar_t__ init_custom_variable (char const*,char const*,char const*,int ,int,int ,int) ;

void
DefineCustomIntVariable(const char *name,
      const char *short_desc,
      const char *long_desc,
      int *valueAddr,
      int bootValue,
      int minValue,
      int maxValue,
      GucContext context,
      int flags,
      GucIntCheckHook check_hook,
      GucIntAssignHook assign_hook,
      GucShowHook show_hook)
{
 struct config_int *var;

 var = (struct config_int *)
  init_custom_variable(name, short_desc, long_desc, context, flags,
        PGC_INT, sizeof(struct config_int));
 var->variable = valueAddr;
 var->boot_val = bootValue;
 var->reset_val = bootValue;
 var->min = minValue;
 var->max = maxValue;
 var->check_hook = check_hook;
 var->assign_hook = assign_hook;
 var->show_hook = show_hook;
 define_custom_variable(&var->gen);
}
