
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extra; } ;
struct config_string {int reset_extra; TYPE_1__ gen; int reset_val; int variable; int (* assign_hook ) (int ,int ) ;} ;
struct config_real {int reset_extra; TYPE_1__ gen; int reset_val; int * variable; int (* assign_hook ) (int ,int ) ;} ;
struct config_int {int reset_extra; TYPE_1__ gen; int reset_val; int * variable; int (* assign_hook ) (int ,int ) ;} ;
struct config_generic {scalar_t__ context; int flags; scalar_t__ source; int vartype; scalar_t__ reset_source; int reset_scontext; int scontext; } ;
struct config_enum {int reset_extra; TYPE_1__ gen; int reset_val; int * variable; int (* assign_hook ) (int ,int ) ;} ;
struct config_bool {int reset_extra; TYPE_1__ gen; int reset_val; int * variable; int (* assign_hook ) (int ,int ) ;} ;


 int GUC_ACTION_SET ;
 int GUC_NO_RESET_ALL ;
 int GUC_REPORT ;





 scalar_t__ PGC_SUSET ;
 scalar_t__ PGC_S_OVERRIDE ;
 scalar_t__ PGC_USERSET ;
 int ReportGUCOption (struct config_generic*) ;
 struct config_generic** guc_variables ;
 int num_guc_variables ;
 int push_old_value (struct config_generic*,int ) ;
 int set_extra_field (TYPE_1__*,int *,int ) ;
 int set_string_field (struct config_string*,int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;

void
ResetAllOptions(void)
{
 int i;

 for (i = 0; i < num_guc_variables; i++)
 {
  struct config_generic *gconf = guc_variables[i];


  if (gconf->context != PGC_SUSET &&
   gconf->context != PGC_USERSET)
   continue;

  if (gconf->flags & GUC_NO_RESET_ALL)
   continue;

  if (gconf->source <= PGC_S_OVERRIDE)
   continue;


  push_old_value(gconf, GUC_ACTION_SET);

  switch (gconf->vartype)
  {
   case 132:
    {
     struct config_bool *conf = (struct config_bool *) gconf;

     if (conf->assign_hook)
      conf->assign_hook(conf->reset_val,
            conf->reset_extra);
     *conf->variable = conf->reset_val;
     set_extra_field(&conf->gen, &conf->gen.extra,
         conf->reset_extra);
     break;
    }
   case 130:
    {
     struct config_int *conf = (struct config_int *) gconf;

     if (conf->assign_hook)
      conf->assign_hook(conf->reset_val,
            conf->reset_extra);
     *conf->variable = conf->reset_val;
     set_extra_field(&conf->gen, &conf->gen.extra,
         conf->reset_extra);
     break;
    }
   case 129:
    {
     struct config_real *conf = (struct config_real *) gconf;

     if (conf->assign_hook)
      conf->assign_hook(conf->reset_val,
            conf->reset_extra);
     *conf->variable = conf->reset_val;
     set_extra_field(&conf->gen, &conf->gen.extra,
         conf->reset_extra);
     break;
    }
   case 128:
    {
     struct config_string *conf = (struct config_string *) gconf;

     if (conf->assign_hook)
      conf->assign_hook(conf->reset_val,
            conf->reset_extra);
     set_string_field(conf, conf->variable, conf->reset_val);
     set_extra_field(&conf->gen, &conf->gen.extra,
         conf->reset_extra);
     break;
    }
   case 131:
    {
     struct config_enum *conf = (struct config_enum *) gconf;

     if (conf->assign_hook)
      conf->assign_hook(conf->reset_val,
            conf->reset_extra);
     *conf->variable = conf->reset_val;
     set_extra_field(&conf->gen, &conf->gen.extra,
         conf->reset_extra);
     break;
    }
  }

  gconf->source = gconf->reset_source;
  gconf->scontext = gconf->reset_scontext;

  if (gconf->flags & GUC_REPORT)
   ReportGUCOption(gconf);
 }
}
