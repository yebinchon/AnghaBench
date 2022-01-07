
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sourceline; scalar_t__ sourcefile; int source; int scontext; int stack; int reset_source; int reset_scontext; } ;
struct config_string {scalar_t__ reset_val; scalar_t__* variable; TYPE_1__ gen; } ;
struct config_generic {char* name; int flags; scalar_t__ vartype; int * stack; } ;


 int Assert (int) ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int GUC_ACTION_SET ;
 int GUC_CUSTOM_PLACEHOLDER ;
 int InitializeOneGUCOption (struct config_generic*) ;
 scalar_t__ PGC_STRING ;
 int WARNING ;
 int add_guc_variable (struct config_generic*,int ) ;
 scalar_t__ bsearch (void*,void*,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int free (struct config_string*) ;
 int guc_var_compare ;
 scalar_t__ guc_variables ;
 int num_guc_variables ;
 int reapply_stacked_values (struct config_generic*,struct config_string*,int ,scalar_t__,int ,int ) ;
 int set_config_option (char const*,scalar_t__,int ,int ,int ,int,int ,int) ;
 int set_config_sourcefile (char const*,scalar_t__,int ) ;
 int set_string_field (struct config_string*,scalar_t__*,int *) ;

__attribute__((used)) static void
define_custom_variable(struct config_generic *variable)
{
 const char *name = variable->name;
 const char **nameAddr = &name;
 struct config_string *pHolder;
 struct config_generic **res;




 res = (struct config_generic **) bsearch((void *) &nameAddr,
            (void *) guc_variables,
            num_guc_variables,
            sizeof(struct config_generic *),
            guc_var_compare);
 if (res == ((void*)0))
 {




  InitializeOneGUCOption(variable);
  add_guc_variable(variable, ERROR);
  return;
 }




 if (((*res)->flags & GUC_CUSTOM_PLACEHOLDER) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("attempt to redefine parameter \"%s\"", name)));

 Assert((*res)->vartype == PGC_STRING);
 pHolder = (struct config_string *) (*res);






 InitializeOneGUCOption(variable);





 *res = variable;
 if (pHolder->reset_val)
  (void) set_config_option(name, pHolder->reset_val,
         pHolder->gen.reset_scontext,
         pHolder->gen.reset_source,
         GUC_ACTION_SET, 1, WARNING, 0);

 Assert(variable->stack == ((void*)0));


 reapply_stacked_values(variable, pHolder, pHolder->gen.stack,
         *(pHolder->variable),
         pHolder->gen.scontext, pHolder->gen.source);


 if (pHolder->gen.sourcefile)
  set_config_sourcefile(name, pHolder->gen.sourcefile,
         pHolder->gen.sourceline);







 set_string_field(pHolder, pHolder->variable, ((void*)0));
 set_string_field(pHolder, &pHolder->reset_val, ((void*)0));

 free(pHolder);
}
