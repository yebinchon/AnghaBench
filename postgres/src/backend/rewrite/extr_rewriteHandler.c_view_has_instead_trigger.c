
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int trig_delete_instead_row; int trig_update_instead_row; int trig_insert_instead_row; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_5__ {TYPE_1__* trigdesc; } ;
typedef TYPE_2__* Relation ;
typedef int CmdType ;





 int ERROR ;
 int elog (int ,char*,int) ;

__attribute__((used)) static bool
view_has_instead_trigger(Relation view, CmdType event)
{
 TriggerDesc *trigDesc = view->trigdesc;

 switch (event)
 {
  case 129:
   if (trigDesc && trigDesc->trig_insert_instead_row)
    return 1;
   break;
  case 128:
   if (trigDesc && trigDesc->trig_update_instead_row)
    return 1;
   break;
  case 130:
   if (trigDesc && trigDesc->trig_delete_instead_row)
    return 1;
   break;
  default:
   elog(ERROR, "unrecognized CmdType: %d", (int) event);
   break;
 }
 return 0;
}
