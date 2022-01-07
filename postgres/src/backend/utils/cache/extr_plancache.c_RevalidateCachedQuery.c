
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * TupleDesc ;
struct TYPE_7__ {int is_valid; scalar_t__ rewriteRoleId; scalar_t__ rewriteRowSecurity; int is_complete; int * query_list; int * query_context; int * context; int * search_path; scalar_t__ dependsOnRLS; int * invalItems; int * relationOids; int * resultDesc; scalar_t__ fixed_result; int num_params; int param_types; int query_string; int parserSetupArg; int * parserSetup; int * raw_parse_tree; TYPE_1__* gplan; scalar_t__ is_oneshot; } ;
struct TYPE_6__ {int is_valid; } ;
typedef int RawStmt ;
typedef int QueryEnvironment ;
typedef int Node ;
typedef int * MemoryContext ;
typedef int List ;
typedef TYPE_2__ CachedPlanSource ;


 int ALLOCSET_START_SMALL_SIZES ;
 int AcquirePlannerLocks (int *,int) ;
 int ActiveSnapshotSet () ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int * CreateTupleDescCopy (int *) ;
 int CurrentMemoryContext ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int FreeTupleDesc (int *) ;
 int * GetOverrideSearchPath (int *) ;
 int GetTransactionSnapshot () ;
 scalar_t__ GetUserId () ;
 scalar_t__ IsTransactionStmtPlan (TYPE_2__*) ;
 int MemoryContextDelete (int *) ;
 int MemoryContextSetParent (int *,int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int * NIL ;
 int OverrideSearchPathMatchesCurrent (int *) ;
 int * PlanCacheComputeResultDesc (int *) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int ReleaseGenericPlan (TYPE_2__*) ;
 void* copyObject (int *) ;
 int equalTupleDescs (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int extract_query_dependencies (int *,int **,int **,scalar_t__*) ;
 int * pg_analyze_and_rewrite (int *,int ,int ,int ,int *) ;
 int * pg_analyze_and_rewrite_params (int *,int ,int *,int ,int *) ;
 scalar_t__ row_security ;

__attribute__((used)) static List *
RevalidateCachedQuery(CachedPlanSource *plansource,
       QueryEnvironment *queryEnv)
{
 bool snapshot_set;
 RawStmt *rawtree;
 List *tlist;
 List *qlist;
 TupleDesc resultDesc;
 MemoryContext querytree_context;
 MemoryContext oldcxt;
 if (plansource->is_oneshot || IsTransactionStmtPlan(plansource))
 {
  Assert(plansource->is_valid);
  return NIL;
 }






 if (plansource->is_valid)
 {
  Assert(plansource->search_path != ((void*)0));
  if (!OverrideSearchPathMatchesCurrent(plansource->search_path))
  {

   plansource->is_valid = 0;
   if (plansource->gplan)
    plansource->gplan->is_valid = 0;
  }
 }





 if (plansource->is_valid && plansource->dependsOnRLS &&
  (plansource->rewriteRoleId != GetUserId() ||
   plansource->rewriteRowSecurity != row_security))
  plansource->is_valid = 0;






 if (plansource->is_valid)
 {
  AcquirePlannerLocks(plansource->query_list, 1);





  if (plansource->is_valid)
  {

   return NIL;
  }


  AcquirePlannerLocks(plansource->query_list, 0);
 }






 plansource->is_valid = 0;
 plansource->query_list = NIL;
 plansource->relationOids = NIL;
 plansource->invalItems = NIL;
 plansource->search_path = ((void*)0);







 if (plansource->query_context)
 {
  MemoryContext qcxt = plansource->query_context;

  plansource->query_context = ((void*)0);
  MemoryContextDelete(qcxt);
 }


 ReleaseGenericPlan(plansource);





 Assert(plansource->is_complete);
 snapshot_set = 0;
 if (!ActiveSnapshotSet())
 {
  PushActiveSnapshot(GetTransactionSnapshot());
  snapshot_set = 1;
 }






 rawtree = copyObject(plansource->raw_parse_tree);
 if (rawtree == ((void*)0))
  tlist = NIL;
 else if (plansource->parserSetup != ((void*)0))
  tlist = pg_analyze_and_rewrite_params(rawtree,
             plansource->query_string,
             plansource->parserSetup,
             plansource->parserSetupArg,
             queryEnv);
 else
  tlist = pg_analyze_and_rewrite(rawtree,
            plansource->query_string,
            plansource->param_types,
            plansource->num_params,
            queryEnv);


 if (snapshot_set)
  PopActiveSnapshot();
 resultDesc = PlanCacheComputeResultDesc(tlist);
 if (resultDesc == ((void*)0) && plansource->resultDesc == ((void*)0))
 {

 }
 else if (resultDesc == ((void*)0) || plansource->resultDesc == ((void*)0) ||
    !equalTupleDescs(resultDesc, plansource->resultDesc))
 {

  if (plansource->fixed_result)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cached plan must not change result type")));
  oldcxt = MemoryContextSwitchTo(plansource->context);
  if (resultDesc)
   resultDesc = CreateTupleDescCopy(resultDesc);
  if (plansource->resultDesc)
   FreeTupleDesc(plansource->resultDesc);
  plansource->resultDesc = resultDesc;
  MemoryContextSwitchTo(oldcxt);
 }





 querytree_context = AllocSetContextCreate(CurrentMemoryContext,
             "CachedPlanQuery",
             ALLOCSET_START_SMALL_SIZES);
 oldcxt = MemoryContextSwitchTo(querytree_context);

 qlist = copyObject(tlist);






 extract_query_dependencies((Node *) qlist,
          &plansource->relationOids,
          &plansource->invalItems,
          &plansource->dependsOnRLS);


 plansource->rewriteRoleId = GetUserId();
 plansource->rewriteRowSecurity = row_security;






 plansource->search_path = GetOverrideSearchPath(querytree_context);

 MemoryContextSwitchTo(oldcxt);


 MemoryContextSetParent(querytree_context, plansource->context);

 plansource->query_context = querytree_context;
 plansource->query_list = qlist;
 plansource->is_valid = 1;


 return tlist;
}
