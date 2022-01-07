
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ec_relids; int ec_members; } ;
struct TYPE_8__ {int eq_classes; } ;
struct TYPE_7__ {int relids; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ EquivalenceClass ;
typedef int Bitmapset ;


 int bms_is_subset (int ,int ) ;
 int bms_next_member (int *,int) ;
 int * get_eclass_indexes_for_relids (TYPE_2__*,int ) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

bool
has_relevant_eclass_joinclause(PlannerInfo *root, RelOptInfo *rel1)
{
 Bitmapset *matched_ecs;
 int i;


 matched_ecs = get_eclass_indexes_for_relids(root, rel1->relids);

 i = -1;
 while ((i = bms_next_member(matched_ecs, i)) >= 0)
 {
  EquivalenceClass *ec = (EquivalenceClass *) list_nth(root->eq_classes,
                i);





  if (list_length(ec->ec_members) <= 1)
   continue;





  if (!bms_is_subset(ec->ec_relids, rel1->relids))
   return 1;
 }

 return 0;
}
