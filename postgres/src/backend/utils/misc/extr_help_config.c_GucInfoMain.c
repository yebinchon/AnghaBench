
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int dummy; } ;
typedef int mixedStruct ;


 int GetNumConfigOptions () ;
 int build_guc_variables () ;
 scalar_t__ displayStruct (int *) ;
 int exit (int ) ;
 struct config_generic** get_guc_variables () ;
 int printMixedStruct (int *) ;

void
GucInfoMain(void)
{
 struct config_generic **guc_vars;
 int numOpts,
    i;


 build_guc_variables();

 guc_vars = get_guc_variables();
 numOpts = GetNumConfigOptions();

 for (i = 0; i < numOpts; i++)
 {
  mixedStruct *var = (mixedStruct *) guc_vars[i];

  if (displayStruct(var))
   printMixedStruct(var);
 }

 exit(0);
}
