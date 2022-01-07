
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_sql_drop; int SQLDropList; } ;
typedef int Node ;
typedef int List ;
typedef int EventTriggerData ;


 int CommandCounterIncrement () ;
 int EVT_SQLDrop ;
 int * EventTriggerCommonSetup (int *,int ,char*,int *) ;
 int EventTriggerInvoke (int *,int *) ;
 int IsUnderPostmaster ;
 int * NIL ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 TYPE_1__* currentEventTriggerState ;
 int list_free (int *) ;
 scalar_t__ slist_is_empty (int *) ;

void
EventTriggerSQLDrop(Node *parsetree)
{
 List *runlist;
 EventTriggerData trigdata;





 if (!IsUnderPostmaster)
  return;
 if (!currentEventTriggerState ||
  slist_is_empty(&currentEventTriggerState->SQLDropList))
  return;

 runlist = EventTriggerCommonSetup(parsetree,
           EVT_SQLDrop, "sql_drop",
           &trigdata);







 if (runlist == NIL)
  return;





 CommandCounterIncrement();
 currentEventTriggerState->in_sql_drop = 1;


 PG_TRY();
 {
  EventTriggerInvoke(runlist, &trigdata);
 }
 PG_FINALLY();
 {
  currentEventTriggerState->in_sql_drop = 0;
 }
 PG_END_TRY();


 list_free(runlist);
}
