
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {double rows; double parallel_workers; int pathkeys; } ;
struct TYPE_18__ {int group_pathkeys; } ;
struct TYPE_17__ {int reltarget; int partial_pathlist; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ Path ;


 int add_path (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ create_gather_merge_path (TYPE_2__*,TYPE_1__*,TYPE_3__*,int ,int ,int *,double*) ;
 scalar_t__ create_sort_path (TYPE_2__*,TYPE_1__*,TYPE_3__*,int ,double) ;
 int generate_gather_paths (TYPE_2__*,TYPE_1__*,int) ;
 TYPE_3__* linitial (int ) ;
 int pathkeys_contained_in (int ,int ) ;

__attribute__((used)) static void
gather_grouping_paths(PlannerInfo *root, RelOptInfo *rel)
{
 Path *cheapest_partial_path;


 generate_gather_paths(root, rel, 1);


 cheapest_partial_path = linitial(rel->partial_pathlist);
 if (!pathkeys_contained_in(root->group_pathkeys,
          cheapest_partial_path->pathkeys))
 {
  Path *path;
  double total_groups;

  total_groups =
   cheapest_partial_path->rows * cheapest_partial_path->parallel_workers;
  path = (Path *) create_sort_path(root, rel, cheapest_partial_path,
           root->group_pathkeys,
           -1.0);
  path = (Path *)
   create_gather_merge_path(root,
          rel,
          path,
          rel->reltarget,
          root->group_pathkeys,
          ((void*)0),
          &total_groups);

  add_path(rel, path);
 }
}
