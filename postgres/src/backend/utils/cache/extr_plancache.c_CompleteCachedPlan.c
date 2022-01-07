
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_complete; int num_params; int cursor_options; int fixed_result; int is_valid; int resultDesc; void* parserSetupArg; int parserSetup; int * param_types; int search_path; int rewriteRowSecurity; int rewriteRoleId; int dependsOnRLS; int invalItems; int relationOids; scalar_t__ is_oneshot; int * query_list; int * query_context; int * context; } ;
typedef int ParserSetupHook ;
typedef int Oid ;
typedef int Node ;
typedef int * MemoryContext ;
typedef int List ;
typedef TYPE_1__ CachedPlanSource ;


 int ALLOCSET_START_SMALL_SIZES ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 int * CurrentMemoryContext ;
 int GetOverrideSearchPath (int *) ;
 int GetUserId () ;
 int IsTransactionStmtPlan (TYPE_1__*) ;
 int MemoryContextSetParent (int *,int *) ;
 int MemoryContextSwitchTo (int *) ;
 int PlanCacheComputeResultDesc (int *) ;
 int * copyObject (int *) ;
 int extract_query_dependencies (int *,int *,int *,int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;
 int row_security ;

void
CompleteCachedPlan(CachedPlanSource *plansource,
       List *querytree_list,
       MemoryContext querytree_context,
       Oid *param_types,
       int num_params,
       ParserSetupHook parserSetup,
       void *parserSetupArg,
       int cursor_options,
       bool fixed_result)
{
 MemoryContext source_context = plansource->context;
 MemoryContext oldcxt = CurrentMemoryContext;


 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(!plansource->is_complete);
 if (plansource->is_oneshot)
 {
  querytree_context = CurrentMemoryContext;
 }
 else if (querytree_context != ((void*)0))
 {
  MemoryContextSetParent(querytree_context, source_context);
  MemoryContextSwitchTo(querytree_context);
 }
 else
 {

  querytree_context = AllocSetContextCreate(source_context,
              "CachedPlanQuery",
              ALLOCSET_START_SMALL_SIZES);
  MemoryContextSwitchTo(querytree_context);
  querytree_list = copyObject(querytree_list);
 }

 plansource->query_context = querytree_context;
 plansource->query_list = querytree_list;

 if (!plansource->is_oneshot && !IsTransactionStmtPlan(plansource))
 {






  extract_query_dependencies((Node *) querytree_list,
           &plansource->relationOids,
           &plansource->invalItems,
           &plansource->dependsOnRLS);


  plansource->rewriteRoleId = GetUserId();
  plansource->rewriteRowSecurity = row_security;
  plansource->search_path = GetOverrideSearchPath(querytree_context);
 }






 MemoryContextSwitchTo(source_context);

 if (num_params > 0)
 {
  plansource->param_types = (Oid *) palloc(num_params * sizeof(Oid));
  memcpy(plansource->param_types, param_types, num_params * sizeof(Oid));
 }
 else
  plansource->param_types = ((void*)0);
 plansource->num_params = num_params;
 plansource->parserSetup = parserSetup;
 plansource->parserSetupArg = parserSetupArg;
 plansource->cursor_options = cursor_options;
 plansource->fixed_result = fixed_result;
 plansource->resultDesc = PlanCacheComputeResultDesc(querytree_list);

 MemoryContextSwitchTo(oldcxt);

 plansource->is_complete = 1;
 plansource->is_valid = 1;
}
