
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int relids; } ;
struct TYPE_6__ {int outer_is_left; int right_relids; int left_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef TYPE_2__ RelOptInfo ;


 scalar_t__ bms_is_subset (int ,int ) ;

__attribute__((used)) static inline bool
clause_sides_match_join(RestrictInfo *rinfo, RelOptInfo *outerrel,
      RelOptInfo *innerrel)
{
 if (bms_is_subset(rinfo->left_relids, outerrel->relids) &&
  bms_is_subset(rinfo->right_relids, innerrel->relids))
 {

  rinfo->outer_is_left = 1;
  return 1;
 }
 else if (bms_is_subset(rinfo->left_relids, innerrel->relids) &&
    bms_is_subset(rinfo->right_relids, outerrel->relids))
 {

  rinfo->outer_is_left = 0;
  return 1;
 }
 return 0;
}
