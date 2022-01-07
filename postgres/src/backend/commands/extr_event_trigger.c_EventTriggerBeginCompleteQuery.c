
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_sql_drop; int commandCollectionInhibited; struct TYPE_4__* previous; int commandList; int * currentCommand; int table_rewrite_oid; int SQLDropList; int cxt; } ;
typedef int MemoryContext ;
typedef TYPE_1__ EventTriggerQueryState ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int InvalidOid ;
 TYPE_1__* MemoryContextAlloc (int ,int) ;
 int NIL ;
 int TopMemoryContext ;
 TYPE_1__* currentEventTriggerState ;
 int slist_init (int *) ;
 int trackDroppedObjectsNeeded () ;

bool
EventTriggerBeginCompleteQuery(void)
{
 EventTriggerQueryState *state;
 MemoryContext cxt;






 if (!trackDroppedObjectsNeeded())
  return 0;

 cxt = AllocSetContextCreate(TopMemoryContext,
        "event trigger state",
        ALLOCSET_DEFAULT_SIZES);
 state = MemoryContextAlloc(cxt, sizeof(EventTriggerQueryState));
 state->cxt = cxt;
 slist_init(&(state->SQLDropList));
 state->in_sql_drop = 0;
 state->table_rewrite_oid = InvalidOid;

 state->commandCollectionInhibited = currentEventTriggerState ?
  currentEventTriggerState->commandCollectionInhibited : 0;
 state->currentCommand = ((void*)0);
 state->commandList = NIL;
 state->previous = currentEventTriggerState;
 currentEventTriggerState = state;

 return 1;
}
