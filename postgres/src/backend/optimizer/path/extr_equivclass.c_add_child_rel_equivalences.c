
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int ec_members; int ec_relids; scalar_t__ ec_has_volatile; } ;
struct TYPE_14__ {int em_datatype; int em_nullable_relids; int em_relids; scalar_t__ em_expr; scalar_t__ em_is_child; scalar_t__ em_is_const; } ;
struct TYPE_13__ {int eq_classes; int ec_merging_done; } ;
struct TYPE_12__ {scalar_t__ reloptkind; int eclass_indexes; int relids; int top_parent_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int Node ;
typedef int Expr ;
typedef TYPE_3__ EquivalenceMember ;
typedef TYPE_4__ EquivalenceClass ;
typedef int AppendRelInfo ;


 int Assert (int ) ;
 int IS_SIMPLE_REL (TYPE_1__*) ;
 scalar_t__ RELOPT_BASEREL ;
 int add_eq_member (TYPE_4__*,int *,int ,int ,int,int ) ;
 scalar_t__ adjust_appendrel_attrs (TYPE_2__*,int *,int,int **) ;
 scalar_t__ adjust_appendrel_attrs_multilevel (TYPE_2__*,int *,int ,int ) ;
 int bms_add_member (int ,int) ;
 int bms_add_members (int ,int ) ;
 int bms_difference (int ,int ) ;
 int bms_is_subset (int ,int ) ;
 int bms_next_member (int ,int) ;
 scalar_t__ bms_overlap (int ,int ) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

void
add_child_rel_equivalences(PlannerInfo *root,
         AppendRelInfo *appinfo,
         RelOptInfo *parent_rel,
         RelOptInfo *child_rel)
{
 Relids top_parent_relids = child_rel->top_parent_relids;
 Relids child_relids = child_rel->relids;
 int i;





 Assert(root->ec_merging_done);
 Assert(IS_SIMPLE_REL(parent_rel));

 i = -1;
 while ((i = bms_next_member(parent_rel->eclass_indexes, i)) >= 0)
 {
  EquivalenceClass *cur_ec = (EquivalenceClass *) list_nth(root->eq_classes, i);
  int num_members;






  if (cur_ec->ec_has_volatile)
   continue;


  Assert(bms_is_subset(top_parent_relids, cur_ec->ec_relids));






  num_members = list_length(cur_ec->ec_members);
  for (int pos = 0; pos < num_members; pos++)
  {
   EquivalenceMember *cur_em = (EquivalenceMember *) list_nth(cur_ec->ec_members, pos);

   if (cur_em->em_is_const)
    continue;
   if (cur_em->em_is_child)
    continue;


   if (bms_overlap(cur_em->em_relids, top_parent_relids))
   {

    Expr *child_expr;
    Relids new_relids;
    Relids new_nullable_relids;

    if (parent_rel->reloptkind == RELOPT_BASEREL)
    {

     child_expr = (Expr *)
      adjust_appendrel_attrs(root,
              (Node *) cur_em->em_expr,
              1, &appinfo);
    }
    else
    {

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
    {
     new_nullable_relids = bms_difference(new_nullable_relids,
               top_parent_relids);
     new_nullable_relids = bms_add_members(new_nullable_relids,
                child_relids);
    }

    (void) add_eq_member(cur_ec, child_expr,
          new_relids, new_nullable_relids,
          1, cur_em->em_datatype);


    child_rel->eclass_indexes = bms_add_member(child_rel->eclass_indexes, i);
   }
  }
 }
}
