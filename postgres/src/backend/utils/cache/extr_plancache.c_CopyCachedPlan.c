
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_complete; int is_oneshot; int num_params; int is_saved; int num_custom_plans; int total_custom_cost; int generic_cost; int generation; int is_valid; int * gplan; int dependsOnRLS; int rewriteRowSecurity; int rewriteRoleId; void* query_context; scalar_t__ search_path; void* invalItems; void* relationOids; void* query_list; void* context; int * resultDesc; int fixed_result; int cursor_options; int parserSetupArg; int parserSetup; int * param_types; int commandTag; int query_string; void* raw_parse_tree; } ;
typedef int Oid ;
typedef void* MemoryContext ;
typedef TYPE_1__ CachedPlanSource ;


 int ALLOCSET_START_SMALL_SIZES ;
 void* AllocSetContextCreate (void*,char*,int ) ;
 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 scalar_t__ CopyOverrideSearchPath (scalar_t__) ;
 int * CreateTupleDescCopy (int *) ;
 void* CurrentMemoryContext ;
 int ERROR ;
 int MemoryContextSetIdentifier (void*,int ) ;
 void* MemoryContextSwitchTo (void*) ;
 void* copyObject (void*) ;
 int elog (int ,char*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int pstrdup (int ) ;

CachedPlanSource *
CopyCachedPlan(CachedPlanSource *plansource)
{
 CachedPlanSource *newsource;
 MemoryContext source_context;
 MemoryContext querytree_context;
 MemoryContext oldcxt;

 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(plansource->is_complete);





 if (plansource->is_oneshot)
  elog(ERROR, "cannot copy a one-shot cached plan");

 source_context = AllocSetContextCreate(CurrentMemoryContext,
             "CachedPlanSource",
             ALLOCSET_START_SMALL_SIZES);

 oldcxt = MemoryContextSwitchTo(source_context);

 newsource = (CachedPlanSource *) palloc0(sizeof(CachedPlanSource));
 newsource->magic = CACHEDPLANSOURCE_MAGIC;
 newsource->raw_parse_tree = copyObject(plansource->raw_parse_tree);
 newsource->query_string = pstrdup(plansource->query_string);
 MemoryContextSetIdentifier(source_context, newsource->query_string);
 newsource->commandTag = plansource->commandTag;
 if (plansource->num_params > 0)
 {
  newsource->param_types = (Oid *)
   palloc(plansource->num_params * sizeof(Oid));
  memcpy(newsource->param_types, plansource->param_types,
      plansource->num_params * sizeof(Oid));
 }
 else
  newsource->param_types = ((void*)0);
 newsource->num_params = plansource->num_params;
 newsource->parserSetup = plansource->parserSetup;
 newsource->parserSetupArg = plansource->parserSetupArg;
 newsource->cursor_options = plansource->cursor_options;
 newsource->fixed_result = plansource->fixed_result;
 if (plansource->resultDesc)
  newsource->resultDesc = CreateTupleDescCopy(plansource->resultDesc);
 else
  newsource->resultDesc = ((void*)0);
 newsource->context = source_context;

 querytree_context = AllocSetContextCreate(source_context,
             "CachedPlanQuery",
             ALLOCSET_START_SMALL_SIZES);
 MemoryContextSwitchTo(querytree_context);
 newsource->query_list = copyObject(plansource->query_list);
 newsource->relationOids = copyObject(plansource->relationOids);
 newsource->invalItems = copyObject(plansource->invalItems);
 if (plansource->search_path)
  newsource->search_path = CopyOverrideSearchPath(plansource->search_path);
 newsource->query_context = querytree_context;
 newsource->rewriteRoleId = plansource->rewriteRoleId;
 newsource->rewriteRowSecurity = plansource->rewriteRowSecurity;
 newsource->dependsOnRLS = plansource->dependsOnRLS;

 newsource->gplan = ((void*)0);

 newsource->is_oneshot = 0;
 newsource->is_complete = 1;
 newsource->is_saved = 0;
 newsource->is_valid = plansource->is_valid;
 newsource->generation = plansource->generation;


 newsource->generic_cost = plansource->generic_cost;
 newsource->total_custom_cost = plansource->total_custom_cost;
 newsource->num_custom_plans = plansource->num_custom_plans;

 MemoryContextSwitchTo(oldcxt);

 return newsource;
}
