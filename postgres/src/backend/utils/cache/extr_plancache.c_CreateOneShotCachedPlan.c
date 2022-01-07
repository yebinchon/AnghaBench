
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* query_string; char const* commandTag; int fixed_result; int rewriteRowSecurity; int dependsOnRLS; int is_oneshot; int is_complete; int is_saved; int is_valid; int generic_cost; scalar_t__ num_custom_plans; scalar_t__ total_custom_cost; scalar_t__ generation; int * gplan; int rewriteRoleId; int * query_context; int * search_path; void* invalItems; void* relationOids; void* query_list; int context; int * resultDesc; scalar_t__ cursor_options; int * parserSetupArg; int * parserSetup; scalar_t__ num_params; int * param_types; int * raw_parse_tree; int magic; } ;
typedef int RawStmt ;
typedef TYPE_1__ CachedPlanSource ;


 int Assert (int ) ;
 int CACHEDPLANSOURCE_MAGIC ;
 int CurrentMemoryContext ;
 int InvalidOid ;
 void* NIL ;
 scalar_t__ palloc0 (int) ;

CachedPlanSource *
CreateOneShotCachedPlan(RawStmt *raw_parse_tree,
      const char *query_string,
      const char *commandTag)
{
 CachedPlanSource *plansource;

 Assert(query_string != ((void*)0));





 plansource = (CachedPlanSource *) palloc0(sizeof(CachedPlanSource));
 plansource->magic = CACHEDPLANSOURCE_MAGIC;
 plansource->raw_parse_tree = raw_parse_tree;
 plansource->query_string = query_string;
 plansource->commandTag = commandTag;
 plansource->param_types = ((void*)0);
 plansource->num_params = 0;
 plansource->parserSetup = ((void*)0);
 plansource->parserSetupArg = ((void*)0);
 plansource->cursor_options = 0;
 plansource->fixed_result = 0;
 plansource->resultDesc = ((void*)0);
 plansource->context = CurrentMemoryContext;
 plansource->query_list = NIL;
 plansource->relationOids = NIL;
 plansource->invalItems = NIL;
 plansource->search_path = ((void*)0);
 plansource->query_context = ((void*)0);
 plansource->rewriteRoleId = InvalidOid;
 plansource->rewriteRowSecurity = 0;
 plansource->dependsOnRLS = 0;
 plansource->gplan = ((void*)0);
 plansource->is_oneshot = 1;
 plansource->is_complete = 0;
 plansource->is_saved = 0;
 plansource->is_valid = 0;
 plansource->generation = 0;
 plansource->generic_cost = -1;
 plansource->total_custom_cost = 0;
 plansource->num_custom_plans = 0;

 return plansource;
}
