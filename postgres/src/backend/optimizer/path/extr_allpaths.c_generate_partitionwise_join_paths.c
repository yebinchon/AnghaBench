
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int nparts; struct TYPE_11__** part_rels; int consider_partitionwise_join; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int Assert (int ) ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 int IS_JOIN_REL (TYPE_1__*) ;
 int IS_PARTITIONED_REL (TYPE_1__*) ;
 int * NIL ;
 int add_paths_to_append_rel (int *,TYPE_1__*,int *) ;
 int check_stack_depth () ;
 int debug_print_rel (int *,TYPE_1__*) ;
 int * lappend (int *,TYPE_1__*) ;
 int list_free (int *) ;
 int mark_dummy_rel (TYPE_1__*) ;
 int set_cheapest (TYPE_1__*) ;

void
generate_partitionwise_join_paths(PlannerInfo *root, RelOptInfo *rel)
{
 List *live_children = NIL;
 int cnt_parts;
 int num_parts;
 RelOptInfo **part_rels;


 if (!IS_JOIN_REL(rel))
  return;


 if (!IS_PARTITIONED_REL(rel))
  return;


 Assert(rel->consider_partitionwise_join);


 check_stack_depth();

 num_parts = rel->nparts;
 part_rels = rel->part_rels;


 for (cnt_parts = 0; cnt_parts < num_parts; cnt_parts++)
 {
  RelOptInfo *child_rel = part_rels[cnt_parts];


  if (child_rel == ((void*)0))
   continue;


  generate_partitionwise_join_paths(root, child_rel);

  set_cheapest(child_rel);


  if (IS_DUMMY_REL(child_rel))
   continue;





  live_children = lappend(live_children, child_rel);
 }


 if (!live_children)
 {
  mark_dummy_rel(rel);
  return;
 }


 add_paths_to_append_rel(root, rel, live_children);
 list_free(live_children);
}
