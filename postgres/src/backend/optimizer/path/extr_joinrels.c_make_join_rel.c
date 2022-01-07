
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int relids; } ;
struct TYPE_18__ {int lhs_strict; int delay_upper_joins; int semi_can_btree; int semi_can_hash; void* semi_rhs_exprs; void* semi_operators; int jointype; int syn_righthand; int syn_lefthand; int min_righthand; int min_lefthand; int type; } ;
typedef TYPE_1__ SpecialJoinInfo ;
typedef int Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int Assert (int) ;
 int JOIN_INNER ;
 void* NIL ;
 int T_SpecialJoinInfo ;
 int bms_free (int ) ;
 int bms_overlap (int ,int ) ;
 int bms_union (int ,int ) ;
 TYPE_2__* build_join_rel (int *,int ,TYPE_2__*,TYPE_2__*,TYPE_1__*,int **) ;
 scalar_t__ is_dummy_rel (TYPE_2__*) ;
 int join_is_legal (int *,TYPE_2__*,TYPE_2__*,int ,TYPE_1__**,int*) ;
 int populate_joinrel_with_paths (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_1__*,int *) ;

RelOptInfo *
make_join_rel(PlannerInfo *root, RelOptInfo *rel1, RelOptInfo *rel2)
{
 Relids joinrelids;
 SpecialJoinInfo *sjinfo;
 bool reversed;
 SpecialJoinInfo sjinfo_data;
 RelOptInfo *joinrel;
 List *restrictlist;


 Assert(!bms_overlap(rel1->relids, rel2->relids));


 joinrelids = bms_union(rel1->relids, rel2->relids);


 if (!join_is_legal(root, rel1, rel2, joinrelids,
        &sjinfo, &reversed))
 {

  bms_free(joinrelids);
  return ((void*)0);
 }


 if (reversed)
 {
  RelOptInfo *trel = rel1;

  rel1 = rel2;
  rel2 = trel;
 }






 if (sjinfo == ((void*)0))
 {
  sjinfo = &sjinfo_data;
  sjinfo->type = T_SpecialJoinInfo;
  sjinfo->min_lefthand = rel1->relids;
  sjinfo->min_righthand = rel2->relids;
  sjinfo->syn_lefthand = rel1->relids;
  sjinfo->syn_righthand = rel2->relids;
  sjinfo->jointype = JOIN_INNER;

  sjinfo->lhs_strict = 0;
  sjinfo->delay_upper_joins = 0;
  sjinfo->semi_can_btree = 0;
  sjinfo->semi_can_hash = 0;
  sjinfo->semi_operators = NIL;
  sjinfo->semi_rhs_exprs = NIL;
 }





 joinrel = build_join_rel(root, joinrelids, rel1, rel2, sjinfo,
        &restrictlist);





 if (is_dummy_rel(joinrel))
 {
  bms_free(joinrelids);
  return joinrel;
 }


 populate_joinrel_with_paths(root, rel1, rel2, joinrel, sjinfo,
        restrictlist);

 bms_free(joinrelids);

 return joinrel;
}
