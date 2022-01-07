
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct config_generic {int vartype; void* extra; int flags; TYPE_3__* stack; int scontext; int source; } ;
struct config_string {char** variable; struct config_generic gen; int (* assign_hook ) (char*,void*) ;} ;
struct config_real {double* variable; struct config_generic gen; int (* assign_hook ) (double,void*) ;} ;
struct config_int {int* variable; struct config_generic gen; int (* assign_hook ) (int,void*) ;} ;
struct config_enum {int* variable; struct config_generic gen; int (* assign_hook ) (int,void*) ;} ;
struct config_bool {int* variable; struct config_generic gen; int (* assign_hook ) (int,void*) ;} ;
struct TYPE_6__ {int boolval; int intval; double realval; char* stringval; int enumval; } ;
struct TYPE_7__ {void* extra; TYPE_1__ val; } ;
typedef TYPE_2__ config_var_value ;
struct TYPE_8__ {int nest_level; int state; TYPE_2__ masked; TYPE_2__ prior; int scontext; int source; int masked_scontext; struct TYPE_8__* prev; } ;
typedef TYPE_3__ GucStack ;
typedef int GucSource ;
typedef int GucContext ;


 int Assert (int) ;
 int GUCNestLevel ;

 int GUC_REPORT ;
 int PGC_S_SESSION ;
 int ReportGUCOption (struct config_generic*) ;
 int discard_stack_value (struct config_generic*,TYPE_2__*) ;
 int guc_dirty ;
 struct config_generic** guc_variables ;
 int num_guc_variables ;
 int pfree (TYPE_3__*) ;
 int set_extra_field (struct config_generic*,void**,void*) ;
 int set_string_field (struct config_string*,char**,char*) ;
 int stub1 (int,void*) ;
 int stub2 (int,void*) ;
 int stub3 (double,void*) ;
 int stub4 (char*,void*) ;
 int stub5 (int,void*) ;

void
AtEOXact_GUC(bool isCommit, int nestLevel)
{
 bool still_dirty;
 int i;






 Assert(nestLevel > 0 &&
     (nestLevel <= GUCNestLevel ||
   (nestLevel == GUCNestLevel + 1 && !isCommit)));


 if (!guc_dirty)
 {
  GUCNestLevel = nestLevel - 1;
  return;
 }

 still_dirty = 0;
 for (i = 0; i < num_guc_variables; i++)
 {
  struct config_generic *gconf = guc_variables[i];
  GucStack *stack;
  while ((stack = gconf->stack) != ((void*)0) &&
      stack->nest_level >= nestLevel)
  {
   GucStack *prev = stack->prev;
   bool restorePrior = 0;
   bool restoreMasked = 0;
   bool changed;







   if (!isCommit)
    restorePrior = 1;
   else if (stack->state == 135)
    restorePrior = 1;
   else if (stack->nest_level == 1)
   {

    if (stack->state == 133)
     restoreMasked = 1;
    else if (stack->state == 134)
    {

     discard_stack_value(gconf, &stack->prior);
    }
    else
     restorePrior = 1;
   }
   else if (prev == ((void*)0) ||
      prev->nest_level < stack->nest_level - 1)
   {

    stack->nest_level--;
    continue;
   }
   else
   {




    switch (stack->state)
    {
     case 135:
      Assert(0);
      break;

     case 134:

      discard_stack_value(gconf, &stack->prior);
      if (prev->state == 133)
       discard_stack_value(gconf, &prev->masked);
      prev->state = 134;
      break;

     case 136:
      if (prev->state == 134)
      {

       prev->masked_scontext = stack->scontext;
       prev->masked = stack->prior;
       prev->state = 133;
      }
      else
      {

       discard_stack_value(gconf, &stack->prior);
      }
      break;

     case 133:

      discard_stack_value(gconf, &stack->prior);

      prev->masked_scontext = stack->masked_scontext;
      if (prev->state == 133)
       discard_stack_value(gconf, &prev->masked);
      prev->masked = stack->masked;
      prev->state = 133;
      break;
    }
   }

   changed = 0;

   if (restorePrior || restoreMasked)
   {

    config_var_value newvalue;
    GucSource newsource;
    GucContext newscontext;

    if (restoreMasked)
    {
     newvalue = stack->masked;
     newsource = PGC_S_SESSION;
     newscontext = stack->masked_scontext;
    }
    else
    {
     newvalue = stack->prior;
     newsource = stack->source;
     newscontext = stack->scontext;
    }

    switch (gconf->vartype)
    {
     case 132:
      {
       struct config_bool *conf = (struct config_bool *) gconf;
       bool newval = newvalue.val.boolval;
       void *newextra = newvalue.extra;

       if (*conf->variable != newval ||
        conf->gen.extra != newextra)
       {
        if (conf->assign_hook)
         conf->assign_hook(newval, newextra);
        *conf->variable = newval;
        set_extra_field(&conf->gen, &conf->gen.extra,
            newextra);
        changed = 1;
       }
       break;
      }
     case 130:
      {
       struct config_int *conf = (struct config_int *) gconf;
       int newval = newvalue.val.intval;
       void *newextra = newvalue.extra;

       if (*conf->variable != newval ||
        conf->gen.extra != newextra)
       {
        if (conf->assign_hook)
         conf->assign_hook(newval, newextra);
        *conf->variable = newval;
        set_extra_field(&conf->gen, &conf->gen.extra,
            newextra);
        changed = 1;
       }
       break;
      }
     case 129:
      {
       struct config_real *conf = (struct config_real *) gconf;
       double newval = newvalue.val.realval;
       void *newextra = newvalue.extra;

       if (*conf->variable != newval ||
        conf->gen.extra != newextra)
       {
        if (conf->assign_hook)
         conf->assign_hook(newval, newextra);
        *conf->variable = newval;
        set_extra_field(&conf->gen, &conf->gen.extra,
            newextra);
        changed = 1;
       }
       break;
      }
     case 128:
      {
       struct config_string *conf = (struct config_string *) gconf;
       char *newval = newvalue.val.stringval;
       void *newextra = newvalue.extra;

       if (*conf->variable != newval ||
        conf->gen.extra != newextra)
       {
        if (conf->assign_hook)
         conf->assign_hook(newval, newextra);
        set_string_field(conf, conf->variable, newval);
        set_extra_field(&conf->gen, &conf->gen.extra,
            newextra);
        changed = 1;
       }







       set_string_field(conf, &stack->prior.val.stringval, ((void*)0));
       set_string_field(conf, &stack->masked.val.stringval, ((void*)0));
       break;
      }
     case 131:
      {
       struct config_enum *conf = (struct config_enum *) gconf;
       int newval = newvalue.val.enumval;
       void *newextra = newvalue.extra;

       if (*conf->variable != newval ||
        conf->gen.extra != newextra)
       {
        if (conf->assign_hook)
         conf->assign_hook(newval, newextra);
        *conf->variable = newval;
        set_extra_field(&conf->gen, &conf->gen.extra,
            newextra);
        changed = 1;
       }
       break;
      }
    }




    set_extra_field(gconf, &(stack->prior.extra), ((void*)0));
    set_extra_field(gconf, &(stack->masked.extra), ((void*)0));


    gconf->source = newsource;
    gconf->scontext = newscontext;
   }


   gconf->stack = prev;
   pfree(stack);


   if (changed && (gconf->flags & GUC_REPORT))
    ReportGUCOption(gconf);
  }

  if (stack != ((void*)0))
   still_dirty = 1;
 }


 guc_dirty = still_dirty;


 GUCNestLevel = nestLevel - 1;
}
