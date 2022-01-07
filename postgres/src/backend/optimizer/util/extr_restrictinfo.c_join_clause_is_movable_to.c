
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lateral_referencers; int relid; } ;
struct TYPE_5__ {int clause_relids; int nullable_relids; int outer_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef TYPE_2__ RelOptInfo ;


 scalar_t__ bms_is_member (int ,int ) ;
 scalar_t__ bms_overlap (int ,int ) ;

bool
join_clause_is_movable_to(RestrictInfo *rinfo, RelOptInfo *baserel)
{

 if (!bms_is_member(baserel->relid, rinfo->clause_relids))
  return 0;


 if (bms_is_member(baserel->relid, rinfo->outer_relids))
  return 0;


 if (bms_is_member(baserel->relid, rinfo->nullable_relids))
  return 0;


 if (bms_overlap(baserel->lateral_referencers, rinfo->clause_relids))
  return 0;

 return 1;
}
