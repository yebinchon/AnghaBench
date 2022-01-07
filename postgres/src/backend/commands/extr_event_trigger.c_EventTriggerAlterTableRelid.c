
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* currentCommand; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_5__ {int objectId; } ;
struct TYPE_6__ {TYPE_1__ alterTable; } ;
struct TYPE_7__ {TYPE_2__ d; } ;
typedef int Oid ;


 TYPE_4__* currentEventTriggerState ;

void
EventTriggerAlterTableRelid(Oid objectId)
{
 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 currentEventTriggerState->currentCommand->d.alterTable.objectId = objectId;
}
