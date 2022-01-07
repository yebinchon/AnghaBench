
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int trig_delete_before_row; int trig_delete_after_row; int trig_update_before_row; int trig_update_after_row; int trig_insert_before_row; int trig_insert_after_row; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_9__ {int relid; } ;
struct TYPE_8__ {TYPE_1__* trigdesc; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int Index ;
typedef int CmdType ;





 int ERROR ;
 int NoLock ;
 int elog (int ,char*,int) ;
 TYPE_3__* planner_rt_fetch (int ,int *) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

bool
has_row_triggers(PlannerInfo *root, Index rti, CmdType event)
{
 RangeTblEntry *rte = planner_rt_fetch(rti, root);
 Relation relation;
 TriggerDesc *trigDesc;
 bool result = 0;


 relation = table_open(rte->relid, NoLock);

 trigDesc = relation->trigdesc;
 switch (event)
 {
  case 129:
   if (trigDesc &&
    (trigDesc->trig_insert_after_row ||
     trigDesc->trig_insert_before_row))
    result = 1;
   break;
  case 128:
   if (trigDesc &&
    (trigDesc->trig_update_after_row ||
     trigDesc->trig_update_before_row))
    result = 1;
   break;
  case 130:
   if (trigDesc &&
    (trigDesc->trig_delete_after_row ||
     trigDesc->trig_delete_before_row))
    result = 1;
   break;
  default:
   elog(ERROR, "unrecognized CmdType: %d", (int) event);
   break;
 }

 table_close(relation, NoLock);
 return result;
}
