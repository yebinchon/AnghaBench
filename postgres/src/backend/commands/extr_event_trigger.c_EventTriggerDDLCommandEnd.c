
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int EventTriggerData ;


 int CommandCounterIncrement () ;
 int EVT_DDLCommandEnd ;
 int * EventTriggerCommonSetup (int *,int ,char*,int *) ;
 int EventTriggerInvoke (int *,int *) ;
 int IsUnderPostmaster ;
 int * NIL ;
 int currentEventTriggerState ;
 int list_free (int *) ;

void
EventTriggerDDLCommandEnd(Node *parsetree)
{
 List *runlist;
 EventTriggerData trigdata;





 if (!IsUnderPostmaster)
  return;
 if (!currentEventTriggerState)
  return;

 runlist = EventTriggerCommonSetup(parsetree,
           EVT_DDLCommandEnd, "ddl_command_end",
           &trigdata);
 if (runlist == NIL)
  return;





 CommandCounterIncrement();


 EventTriggerInvoke(runlist, &trigdata);


 list_free(runlist);
}
