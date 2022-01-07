
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ec_members; int ec_relids; } ;
struct TYPE_9__ {int eq_classes; } ;
struct TYPE_8__ {int relids; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ EquivalenceClass ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int bms_next_member (int *,int) ;
 int bms_overlap (int ,int ) ;
 int * get_common_eclass_indexes (TYPE_2__*,int ,int ) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

bool
have_relevant_eclass_joinclause(PlannerInfo *root,
        RelOptInfo *rel1, RelOptInfo *rel2)
{
 Bitmapset *matching_ecs;
 int i;


 matching_ecs = get_common_eclass_indexes(root, rel1->relids,
            rel2->relids);

 i = -1;
 while ((i = bms_next_member(matching_ecs, i)) >= 0)
 {
  EquivalenceClass *ec = (EquivalenceClass *) list_nth(root->eq_classes,
                i);





  Assert(bms_overlap(rel1->relids, ec->ec_relids));
  Assert(bms_overlap(rel2->relids, ec->ec_relids));





  if (list_length(ec->ec_members) <= 1)
   continue;
  return 1;
 }

 return 0;
}
