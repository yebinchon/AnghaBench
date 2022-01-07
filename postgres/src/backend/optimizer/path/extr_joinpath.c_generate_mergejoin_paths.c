
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int * mergeclause_list; } ;
struct TYPE_17__ {int pathkeys; } ;
struct TYPE_16__ {int pathlist; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef int List ;
typedef scalar_t__ JoinType ;
typedef TYPE_3__ JoinPathExtraData ;


 int Assert (int) ;
 scalar_t__ JOIN_FULL ;
 scalar_t__ JOIN_INNER ;
 scalar_t__ JOIN_UNIQUE_INNER ;
 scalar_t__ JOIN_UNIQUE_OUTER ;
 int * NIL ;
 int STARTUP_COST ;
 int TOTAL_COST ;
 scalar_t__ compare_path_costs (TYPE_2__*,TYPE_2__*,int ) ;
 int * find_mergeclauses_for_outer_pathkeys (int *,int ,int *) ;
 TYPE_2__* get_cheapest_path_for_pathkeys (int ,int *,int *,int ,int) ;
 int * list_copy (int *) ;
 int list_length (int *) ;
 int * list_truncate (int *,int) ;
 int * make_inner_pathkeys_for_merge (int *,int *,int ) ;
 scalar_t__ pathkeys_contained_in (int *,int ) ;
 int * trim_mergeclauses_for_inner_pathkeys (int *,int *,int *) ;
 int try_mergejoin_path (int *,TYPE_1__*,TYPE_2__*,TYPE_2__*,int *,int *,int *,int *,scalar_t__,TYPE_3__*,int) ;

__attribute__((used)) static void
generate_mergejoin_paths(PlannerInfo *root,
       RelOptInfo *joinrel,
       RelOptInfo *innerrel,
       Path *outerpath,
       JoinType jointype,
       JoinPathExtraData *extra,
       bool useallclauses,
       Path *inner_cheapest_total,
       List *merge_pathkeys,
       bool is_partial)
{
 List *mergeclauses;
 List *innersortkeys;
 List *trialsortkeys;
 Path *cheapest_startup_inner;
 Path *cheapest_total_inner;
 JoinType save_jointype = jointype;
 int num_sortkeys;
 int sortkeycnt;

 if (jointype == JOIN_UNIQUE_OUTER || jointype == JOIN_UNIQUE_INNER)
  jointype = JOIN_INNER;


 mergeclauses =
  find_mergeclauses_for_outer_pathkeys(root,
            outerpath->pathkeys,
            extra->mergeclause_list);
 if (mergeclauses == NIL)
 {
  if (jointype == JOIN_FULL)
                                    ;
  else
   return;
 }
 if (useallclauses &&
  list_length(mergeclauses) != list_length(extra->mergeclause_list))
  return;


 innersortkeys = make_inner_pathkeys_for_merge(root,
              mergeclauses,
              outerpath->pathkeys);







 try_mergejoin_path(root,
        joinrel,
        outerpath,
        inner_cheapest_total,
        merge_pathkeys,
        mergeclauses,
        NIL,
        innersortkeys,
        jointype,
        extra,
        is_partial);


 if (save_jointype == JOIN_UNIQUE_INNER)
  return;
 if (pathkeys_contained_in(innersortkeys,
         inner_cheapest_total->pathkeys))
 {

  cheapest_startup_inner = inner_cheapest_total;
  cheapest_total_inner = inner_cheapest_total;
 }
 else
 {

  cheapest_startup_inner = ((void*)0);
  cheapest_total_inner = ((void*)0);
 }
 num_sortkeys = list_length(innersortkeys);
 if (num_sortkeys > 1 && !useallclauses)
  trialsortkeys = list_copy(innersortkeys);
 else
  trialsortkeys = innersortkeys;

 for (sortkeycnt = num_sortkeys; sortkeycnt > 0; sortkeycnt--)
 {
  Path *innerpath;
  List *newclauses = NIL;






  trialsortkeys = list_truncate(trialsortkeys, sortkeycnt);
  innerpath = get_cheapest_path_for_pathkeys(innerrel->pathlist,
               trialsortkeys,
               ((void*)0),
               TOTAL_COST,
               is_partial);
  if (innerpath != ((void*)0) &&
   (cheapest_total_inner == ((void*)0) ||
    compare_path_costs(innerpath, cheapest_total_inner,
        TOTAL_COST) < 0))
  {


   if (sortkeycnt < num_sortkeys)
   {
    newclauses =
     trim_mergeclauses_for_inner_pathkeys(root,
               mergeclauses,
               trialsortkeys);
    Assert(newclauses != NIL);
   }
   else
    newclauses = mergeclauses;
   try_mergejoin_path(root,
          joinrel,
          outerpath,
          innerpath,
          merge_pathkeys,
          newclauses,
          NIL,
          NIL,
          jointype,
          extra,
          is_partial);
   cheapest_total_inner = innerpath;
  }

  innerpath = get_cheapest_path_for_pathkeys(innerrel->pathlist,
               trialsortkeys,
               ((void*)0),
               STARTUP_COST,
               is_partial);
  if (innerpath != ((void*)0) &&
   (cheapest_startup_inner == ((void*)0) ||
    compare_path_costs(innerpath, cheapest_startup_inner,
        STARTUP_COST) < 0))
  {

   if (innerpath != cheapest_total_inner)
   {




    if (newclauses == NIL)
    {
     if (sortkeycnt < num_sortkeys)
     {
      newclauses =
       trim_mergeclauses_for_inner_pathkeys(root,
                 mergeclauses,
                 trialsortkeys);
      Assert(newclauses != NIL);
     }
     else
      newclauses = mergeclauses;
    }
    try_mergejoin_path(root,
           joinrel,
           outerpath,
           innerpath,
           merge_pathkeys,
           newclauses,
           NIL,
           NIL,
           jointype,
           extra,
           is_partial);
   }
   cheapest_startup_inner = innerpath;
  }




  if (useallclauses)
   break;
 }
}
