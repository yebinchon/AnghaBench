
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_real {double* variable; double boot_val; double reset_val; double min; double max; int gen; int show_hook; int assign_hook; int check_hook; } ;
typedef int GucShowHook ;
typedef int GucRealCheckHook ;
typedef int GucRealAssignHook ;
typedef int GucContext ;


 int PGC_REAL ;
 int define_custom_variable (int *) ;
 scalar_t__ init_custom_variable (char const*,char const*,char const*,int ,int,int ,int) ;

void
DefineCustomRealVariable(const char *name,
       const char *short_desc,
       const char *long_desc,
       double *valueAddr,
       double bootValue,
       double minValue,
       double maxValue,
       GucContext context,
       int flags,
       GucRealCheckHook check_hook,
       GucRealAssignHook assign_hook,
       GucShowHook show_hook)
{
 struct config_real *var;

 var = (struct config_real *)
  init_custom_variable(name, short_desc, long_desc, context, flags,
        PGC_REAL, sizeof(struct config_real));
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
