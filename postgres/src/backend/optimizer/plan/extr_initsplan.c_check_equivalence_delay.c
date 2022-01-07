
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ join_info_list; } ;
struct TYPE_6__ {int right_relids; int left_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int Relids ;
typedef TYPE_2__ PlannerInfo ;


 scalar_t__ NIL ;
 int bms_copy (int ) ;
 scalar_t__ check_outerjoin_delay (TYPE_2__*,int *,int *,int) ;

__attribute__((used)) static bool
check_equivalence_delay(PlannerInfo *root,
      RestrictInfo *restrictinfo)
{
 Relids relids;
 Relids nullable_relids;


 if (root->join_info_list == NIL)
  return 1;


 relids = bms_copy(restrictinfo->left_relids);

 if (check_outerjoin_delay(root, &relids, &nullable_relids, 1))
  return 0;


 relids = bms_copy(restrictinfo->right_relids);
 if (check_outerjoin_delay(root, &relids, &nullable_relids, 1))
  return 0;

 return 1;
}
