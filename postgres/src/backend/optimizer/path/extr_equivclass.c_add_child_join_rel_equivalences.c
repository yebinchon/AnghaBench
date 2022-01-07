
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int ec_members; int ec_relids; scalar_t__ ec_has_volatile; } ;
struct TYPE_16__ {int em_datatype; int em_nullable_relids; int em_relids; scalar_t__ em_expr; scalar_t__ em_is_child; scalar_t__ em_is_const; } ;
struct TYPE_15__ {int eq_classes; } ;
struct TYPE_14__ {scalar_t__ reloptkind; int relids; int top_parent_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int Node ;
typedef int Expr ;
typedef TYPE_3__ EquivalenceMember ;
typedef TYPE_4__ EquivalenceClass ;
typedef int Bitmapset ;
typedef int AppendRelInfo ;


 int Assert (int) ;
 scalar_t__ BMS_MULTIPLE ;
 scalar_t__ IS_JOIN_REL (TYPE_1__*) ;
 scalar_t__ RELOPT_JOINREL ;
 scalar_t__ RELOPT_OTHER_JOINREL ;
 int add_eq_member (TYPE_4__*,int *,int ,int ,int,int ) ;
 scalar_t__ adjust_appendrel_attrs (TYPE_2__*,int *,int,int **) ;
 scalar_t__ adjust_appendrel_attrs_multilevel (TYPE_2__*,int *,int ,int ) ;
 int adjust_child_relids_multilevel (TYPE_2__*,int ,int ,int ) ;
 int bms_add_members (int ,int ) ;
 int bms_difference (int ,int ) ;
 scalar_t__ bms_membership (int ) ;
 int bms_next_member (int *,int) ;
 int bms_overlap (int ,int ) ;
 int * get_eclass_indexes_for_relids (TYPE_2__*,int ) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

void
add_child_join_rel_equivalences(PlannerInfo *root,
        int nappinfos, AppendRelInfo **appinfos,
        RelOptInfo *parent_joinrel,
        RelOptInfo *child_joinrel)
{
 Relids top_parent_relids = child_joinrel->top_parent_relids;
 Relids child_relids = child_joinrel->relids;
 Bitmapset *matching_ecs;
 int i;

 Assert(IS_JOIN_REL(child_joinrel) && IS_JOIN_REL(parent_joinrel));


 matching_ecs = get_eclass_indexes_for_relids(root, top_parent_relids);

 i = -1;
 while ((i = bms_next_member(matching_ecs, i)) >= 0)
 {
  EquivalenceClass *cur_ec = (EquivalenceClass *) list_nth(root->eq_classes, i);
  int num_members;






  if (cur_ec->ec_has_volatile)
   continue;


  Assert(bms_overlap(top_parent_relids, cur_ec->ec_relids));






  num_members = list_length(cur_ec->ec_members);
  for (int pos = 0; pos < num_members; pos++)
  {
   EquivalenceMember *cur_em = (EquivalenceMember *) list_nth(cur_ec->ec_members, pos);

   if (cur_em->em_is_const)
    continue;





   if (cur_em->em_is_child)
    continue;





   if (bms_membership(cur_em->em_relids) != BMS_MULTIPLE)
    continue;


   if (bms_overlap(cur_em->em_relids, top_parent_relids))
   {

    Expr *child_expr;
    Relids new_relids;
    Relids new_nullable_relids;

    if (parent_joinrel->reloptkind == RELOPT_JOINREL)
    {

     child_expr = (Expr *)
      adjust_appendrel_attrs(root,
              (Node *) cur_em->em_expr,
              nappinfos, appinfos);
    }
    else
    {

     Assert(parent_joinrel->reloptkind == RELOPT_OTHER_JOINREL);
     child_expr = (Expr *)
      adjust_appendrel_attrs_multilevel(root,
                (Node *) cur_em->em_expr,
                child_relids,
                top_parent_relids);
    }







    new_relids = bms_difference(cur_em->em_relids,
           top_parent_relids);
    new_relids = bms_add_members(new_relids, child_relids);





    new_nullable_relids = cur_em->em_nullable_relids;
    if (bms_overlap(new_nullable_relids, top_parent_relids))
     new_nullable_relids =
      adjust_child_relids_multilevel(root,
                new_nullable_relids,
                child_relids,
                top_parent_relids);

    (void) add_eq_member(cur_ec, child_expr,
          new_relids, new_nullable_relids,
          1, cur_em->em_datatype);
   }
  }
 }
}
