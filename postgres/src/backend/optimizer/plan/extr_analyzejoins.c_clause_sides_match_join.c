
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outer_is_left; int right_relids; int left_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int Relids ;


 scalar_t__ bms_is_subset (int ,int ) ;

__attribute__((used)) static inline bool
clause_sides_match_join(RestrictInfo *rinfo, Relids outerrelids,
      Relids innerrelids)
{
 if (bms_is_subset(rinfo->left_relids, outerrelids) &&
  bms_is_subset(rinfo->right_relids, innerrelids))
 {

  rinfo->outer_is_left = 1;
  return 1;
 }
 else if (bms_is_subset(rinfo->left_relids, innerrelids) &&
    bms_is_subset(rinfo->right_relids, outerrelids))
 {

  rinfo->outer_is_left = 0;
  return 1;
 }
 return 0;
}
