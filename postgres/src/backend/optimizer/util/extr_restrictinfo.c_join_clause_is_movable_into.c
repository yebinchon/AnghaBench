
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nullable_relids; int outer_relids; int clause_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int Relids ;


 int bms_is_subset (int ,int ) ;
 scalar_t__ bms_overlap (int ,int ) ;

bool
join_clause_is_movable_into(RestrictInfo *rinfo,
       Relids currentrelids,
       Relids current_and_outer)
{

 if (!bms_is_subset(rinfo->clause_relids, current_and_outer))
  return 0;


 if (!bms_overlap(currentrelids, rinfo->clause_relids))
  return 0;


 if (bms_overlap(currentrelids, rinfo->outer_relids))
  return 0;







 if (bms_overlap(currentrelids, rinfo->nullable_relids))
  return 0;

 return 1;
}
