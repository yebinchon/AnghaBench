
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; scalar_t__* name; } ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int GUC_CUSTOM_PLACEHOLDER ;
 scalar_t__ GUC_QUALIFIER_SEPARATOR ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__*) ;
 struct config_generic** guc_variables ;
 int num_guc_variables ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,scalar_t__*,int) ;

void
EmitWarningsOnPlaceholders(const char *className)
{
 int classLen = strlen(className);
 int i;

 for (i = 0; i < num_guc_variables; i++)
 {
  struct config_generic *var = guc_variables[i];

  if ((var->flags & GUC_CUSTOM_PLACEHOLDER) != 0 &&
   strncmp(className, var->name, classLen) == 0 &&
   var->name[classLen] == GUC_QUALIFIER_SEPARATOR)
  {
   ereport(WARNING,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("unrecognized configuration parameter \"%s\"",
       var->name)));
  }
 }
}
