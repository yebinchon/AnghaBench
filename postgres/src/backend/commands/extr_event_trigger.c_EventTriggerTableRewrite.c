
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_rewrite_reason; int table_rewrite_oid; } ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int EventTriggerData ;


 int CommandCounterIncrement () ;
 int EVT_TableRewrite ;
 int * EventTriggerCommonSetup (int *,int ,char*,int *) ;
 int EventTriggerInvoke (int *,int *) ;
 int InvalidOid ;
 int IsUnderPostmaster ;
 int * NIL ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 TYPE_1__* currentEventTriggerState ;
 int list_free (int *) ;

void
EventTriggerTableRewrite(Node *parsetree, Oid tableOid, int reason)
{
 List *runlist;
 EventTriggerData trigdata;
 if (!IsUnderPostmaster)
  return;
 if (!currentEventTriggerState)
  return;

 runlist = EventTriggerCommonSetup(parsetree,
           EVT_TableRewrite,
           "table_rewrite",
           &trigdata);
 if (runlist == NIL)
  return;
 currentEventTriggerState->table_rewrite_oid = tableOid;
 currentEventTriggerState->table_rewrite_reason = reason;


 PG_TRY();
 {
  EventTriggerInvoke(runlist, &trigdata);
 }
 PG_FINALLY();
 {
  currentEventTriggerState->table_rewrite_oid = InvalidOid;
  currentEventTriggerState->table_rewrite_reason = 0;
 }
 PG_END_TRY();


 list_free(runlist);





 CommandCounterIncrement();
}
