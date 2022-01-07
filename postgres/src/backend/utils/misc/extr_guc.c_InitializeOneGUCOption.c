
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* extra; int name; } ;
struct config_string {char** variable; char* reset_val; void* reset_extra; TYPE_4__ gen; int (* assign_hook ) (char*,void*) ;int * boot_val; } ;
struct TYPE_8__ {void* extra; int name; } ;
struct config_real {double boot_val; double min; double max; double* variable; double reset_val; void* reset_extra; TYPE_3__ gen; int (* assign_hook ) (double,void*) ;} ;
struct TYPE_7__ {void* extra; int name; } ;
struct config_int {int boot_val; int min; int max; int* variable; int reset_val; void* reset_extra; TYPE_2__ gen; int (* assign_hook ) (int,void*) ;} ;
struct config_generic {int vartype; scalar_t__ sourceline; int * sourcefile; int * extra; int * stack; void* reset_scontext; void* scontext; void* reset_source; void* source; scalar_t__ status; } ;
struct TYPE_10__ {void* extra; int name; } ;
struct config_enum {int boot_val; int* variable; int reset_val; void* reset_extra; TYPE_5__ gen; int (* assign_hook ) (int,void*) ;} ;
struct TYPE_6__ {void* extra; int name; } ;
struct config_bool {int boot_val; int* variable; int reset_val; void* reset_extra; TYPE_1__ gen; int (* assign_hook ) (int,void*) ;} ;


 int Assert (int) ;
 int FATAL ;
 int LOG ;



 void* PGC_INTERNAL ;


 void* PGC_S_DEFAULT ;
 int call_bool_check_hook (struct config_bool*,int*,void**,void*,int ) ;
 int call_enum_check_hook (struct config_enum*,int*,void**,void*,int ) ;
 int call_int_check_hook (struct config_int*,int*,void**,void*,int ) ;
 int call_real_check_hook (struct config_real*,double*,void**,void*,int ) ;
 int call_string_check_hook (struct config_string*,char**,void**,void*,int ) ;
 int elog (int ,char*,int ,...) ;
 char* guc_strdup (int ,int *) ;
 int stub1 (int,void*) ;
 int stub2 (int,void*) ;
 int stub3 (double,void*) ;
 int stub4 (char*,void*) ;
 int stub5 (int,void*) ;

__attribute__((used)) static void
InitializeOneGUCOption(struct config_generic *gconf)
{
 gconf->status = 0;
 gconf->source = PGC_S_DEFAULT;
 gconf->reset_source = PGC_S_DEFAULT;
 gconf->scontext = PGC_INTERNAL;
 gconf->reset_scontext = PGC_INTERNAL;
 gconf->stack = ((void*)0);
 gconf->extra = ((void*)0);
 gconf->sourcefile = ((void*)0);
 gconf->sourceline = 0;

 switch (gconf->vartype)
 {
  case 132:
   {
    struct config_bool *conf = (struct config_bool *) gconf;
    bool newval = conf->boot_val;
    void *extra = ((void*)0);

    if (!call_bool_check_hook(conf, &newval, &extra,
            PGC_S_DEFAULT, LOG))
     elog(FATAL, "failed to initialize %s to %d",
       conf->gen.name, (int) newval);
    if (conf->assign_hook)
     conf->assign_hook(newval, extra);
    *conf->variable = conf->reset_val = newval;
    conf->gen.extra = conf->reset_extra = extra;
    break;
   }
  case 130:
   {
    struct config_int *conf = (struct config_int *) gconf;
    int newval = conf->boot_val;
    void *extra = ((void*)0);

    Assert(newval >= conf->min);
    Assert(newval <= conf->max);
    if (!call_int_check_hook(conf, &newval, &extra,
           PGC_S_DEFAULT, LOG))
     elog(FATAL, "failed to initialize %s to %d",
       conf->gen.name, newval);
    if (conf->assign_hook)
     conf->assign_hook(newval, extra);
    *conf->variable = conf->reset_val = newval;
    conf->gen.extra = conf->reset_extra = extra;
    break;
   }
  case 129:
   {
    struct config_real *conf = (struct config_real *) gconf;
    double newval = conf->boot_val;
    void *extra = ((void*)0);

    Assert(newval >= conf->min);
    Assert(newval <= conf->max);
    if (!call_real_check_hook(conf, &newval, &extra,
            PGC_S_DEFAULT, LOG))
     elog(FATAL, "failed to initialize %s to %g",
       conf->gen.name, newval);
    if (conf->assign_hook)
     conf->assign_hook(newval, extra);
    *conf->variable = conf->reset_val = newval;
    conf->gen.extra = conf->reset_extra = extra;
    break;
   }
  case 128:
   {
    struct config_string *conf = (struct config_string *) gconf;
    char *newval;
    void *extra = ((void*)0);


    if (conf->boot_val != ((void*)0))
     newval = guc_strdup(FATAL, conf->boot_val);
    else
     newval = ((void*)0);

    if (!call_string_check_hook(conf, &newval, &extra,
           PGC_S_DEFAULT, LOG))
     elog(FATAL, "failed to initialize %s to \"%s\"",
       conf->gen.name, newval ? newval : "");
    if (conf->assign_hook)
     conf->assign_hook(newval, extra);
    *conf->variable = conf->reset_val = newval;
    conf->gen.extra = conf->reset_extra = extra;
    break;
   }
  case 131:
   {
    struct config_enum *conf = (struct config_enum *) gconf;
    int newval = conf->boot_val;
    void *extra = ((void*)0);

    if (!call_enum_check_hook(conf, &newval, &extra,
            PGC_S_DEFAULT, LOG))
     elog(FATAL, "failed to initialize %s to %d",
       conf->gen.name, newval);
    if (conf->assign_hook)
     conf->assign_hook(newval, extra);
    *conf->variable = conf->reset_val = newval;
    conf->gen.extra = conf->reset_extra = extra;
    break;
   }
 }
}
