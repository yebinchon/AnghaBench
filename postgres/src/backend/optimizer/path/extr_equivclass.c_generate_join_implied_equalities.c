
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ ec_broken; int ec_relids; int ec_members; scalar_t__ ec_has_const; } ;
struct TYPE_14__ {int eq_classes; } ;
struct TYPE_13__ {int relids; int top_parent_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int List ;
typedef TYPE_3__ EquivalenceClass ;
typedef int Bitmapset ;


 int Assert (int) ;
 scalar_t__ IS_OTHER_REL (TYPE_1__*) ;
 int * NIL ;
 int bms_is_empty (int ) ;
 int bms_next_member (int *,int) ;
 int bms_overlap (int ,int ) ;
 int bms_union (int ,int ) ;
 int * generate_join_implied_equalities_broken (TYPE_2__*,TYPE_3__*,int ,int ,int ,TYPE_1__*) ;
 int * generate_join_implied_equalities_normal (TYPE_2__*,TYPE_3__*,int ,int ,int ) ;
 int * get_common_eclass_indexes (TYPE_2__*,int ,int ) ;
 int * list_concat (int *,int *) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

List *
generate_join_implied_equalities(PlannerInfo *root,
         Relids join_relids,
         Relids outer_relids,
         RelOptInfo *inner_rel)
{
 List *result = NIL;
 Relids inner_relids = inner_rel->relids;
 Relids nominal_inner_relids;
 Relids nominal_join_relids;
 Bitmapset *matching_ecs;
 int i;


 if (IS_OTHER_REL(inner_rel))
 {
  Assert(!bms_is_empty(inner_rel->top_parent_relids));


  nominal_inner_relids = inner_rel->top_parent_relids;

  nominal_join_relids = bms_union(outer_relids, nominal_inner_relids);
 }
 else
 {
  nominal_inner_relids = inner_relids;
  nominal_join_relids = join_relids;
 }




 matching_ecs = get_common_eclass_indexes(root, inner_rel->relids,
            outer_relids);

 i = -1;
 while ((i = bms_next_member(matching_ecs, i)) >= 0)
 {
  EquivalenceClass *ec = (EquivalenceClass *) list_nth(root->eq_classes, i);
  List *sublist = NIL;


  if (ec->ec_has_const)
   continue;


  if (list_length(ec->ec_members) <= 1)
   continue;


  Assert(bms_overlap(ec->ec_relids, nominal_join_relids));

  if (!ec->ec_broken)
   sublist = generate_join_implied_equalities_normal(root,
                 ec,
                 join_relids,
                 outer_relids,
                 inner_relids);


  if (ec->ec_broken)
   sublist = generate_join_implied_equalities_broken(root,
                 ec,
                 nominal_join_relids,
                 outer_relids,
                 nominal_inner_relids,
                 inner_rel);

  result = list_concat(result, sublist);
 }

 return result;
}
