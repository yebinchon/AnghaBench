
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int custom_relids; } ;
struct TYPE_12__ {int fs_relids; } ;
struct TYPE_11__ {int exclRelRTI; int nominalRelation; } ;
struct TYPE_10__ {int * plan; } ;
struct TYPE_9__ {int scanrelid; } ;
typedef TYPE_1__ Scan ;
typedef TYPE_2__ PlanState ;
typedef int Plan ;
typedef TYPE_3__ ModifyTable ;
typedef TYPE_4__ ForeignScan ;
typedef TYPE_5__ CustomScan ;
typedef int Bitmapset ;
 int * bms_add_member (int *,int ) ;
 int * bms_add_members (int *,int ) ;
 int nodeTag (int *) ;
 int planstate_tree_walker (TYPE_2__*,int (*) (TYPE_2__*,int **),int **) ;

__attribute__((used)) static bool
ExplainPreScanNode(PlanState *planstate, Bitmapset **rels_used)
{
 Plan *plan = planstate->plan;

 switch (nodeTag(plan))
 {
  case 133:
  case 134:
  case 137:
  case 138:
  case 143:
  case 130:
  case 132:
  case 139:
  case 131:
  case 129:
  case 142:
  case 135:
  case 128:
   *rels_used = bms_add_member(*rels_used,
          ((Scan *) plan)->scanrelid);
   break;
  case 140:
   *rels_used = bms_add_members(*rels_used,
           ((ForeignScan *) plan)->fs_relids);
   break;
  case 141:
   *rels_used = bms_add_members(*rels_used,
           ((CustomScan *) plan)->custom_relids);
   break;
  case 136:
   *rels_used = bms_add_member(*rels_used,
          ((ModifyTable *) plan)->nominalRelation);
   if (((ModifyTable *) plan)->exclRelRTI)
    *rels_used = bms_add_member(*rels_used,
           ((ModifyTable *) plan)->exclRelRTI);
   break;
  default:
   break;
 }

 return planstate_tree_walker(planstate, ExplainPreScanNode, rels_used);
}
