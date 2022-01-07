
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {char** variable; char const* boot_val; int gen; int show_hook; int assign_hook; int check_hook; } ;
typedef int GucStringCheckHook ;
typedef int GucStringAssignHook ;
typedef int GucShowHook ;
typedef int GucContext ;


 int PGC_STRING ;
 int define_custom_variable (int *) ;
 scalar_t__ init_custom_variable (char const*,char const*,char const*,int ,int,int ,int) ;

void
DefineCustomStringVariable(const char *name,
         const char *short_desc,
         const char *long_desc,
         char **valueAddr,
         const char *bootValue,
         GucContext context,
         int flags,
         GucStringCheckHook check_hook,
         GucStringAssignHook assign_hook,
         GucShowHook show_hook)
{
 struct config_string *var;

 var = (struct config_string *)
  init_custom_variable(name, short_desc, long_desc, context, flags,
        PGC_STRING, sizeof(struct config_string));
 var->variable = valueAddr;
 var->boot_val = bootValue;
 var->check_hook = check_hook;
 var->assign_hook = assign_hook;
 var->show_hook = show_hook;
 define_custom_variable(&var->gen);
}
