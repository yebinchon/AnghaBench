
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct HTAB {int dummy; } ;
struct TYPE_9__ {int total_cost; } ;
struct TYPE_8__ {struct HTAB* join_rel_hash; int join_rel_list; int * join_rel_level; } ;
struct TYPE_7__ {TYPE_3__* cheapest_total_path; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int MemoryContext ;
typedef int Gene ;
typedef int Cost ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int ) ;
 int CurrentMemoryContext ;
 int DBL_MAX ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* gimme_tree (TYPE_2__*,int *,int) ;
 int list_length (int ) ;
 int list_truncate (int ,int) ;

Cost
geqo_eval(PlannerInfo *root, Gene *tour, int num_gene)
{
 MemoryContext mycontext;
 MemoryContext oldcxt;
 RelOptInfo *joinrel;
 Cost fitness;
 int savelength;
 struct HTAB *savehash;
 mycontext = AllocSetContextCreate(CurrentMemoryContext,
           "GEQO",
           ALLOCSET_DEFAULT_SIZES);
 oldcxt = MemoryContextSwitchTo(mycontext);
 savelength = list_length(root->join_rel_list);
 savehash = root->join_rel_hash;
 Assert(root->join_rel_level == ((void*)0));

 root->join_rel_hash = ((void*)0);


 joinrel = gimme_tree(root, tour, num_gene);
 if (joinrel)
 {
  Path *best_path = joinrel->cheapest_total_path;

  fitness = best_path->total_cost;
 }
 else
  fitness = DBL_MAX;





 root->join_rel_list = list_truncate(root->join_rel_list,
          savelength);
 root->join_rel_hash = savehash;


 MemoryContextSwitchTo(oldcxt);
 MemoryContextDelete(mycontext);

 return fitness;
}
