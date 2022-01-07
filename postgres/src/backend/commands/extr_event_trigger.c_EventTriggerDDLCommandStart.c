
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int EventTriggerData ;


 int CommandCounterIncrement () ;
 int EVT_DDLCommandStart ;
 int * EventTriggerCommonSetup (int *,int ,char*,int *) ;
 int EventTriggerInvoke (int *,int *) ;
 int IsUnderPostmaster ;
 int * NIL ;
 int list_free (int *) ;

void
EventTriggerDDLCommandStart(Node *parsetree)
{
 List *runlist;
 EventTriggerData trigdata;
 if (!IsUnderPostmaster)
  return;

 runlist = EventTriggerCommonSetup(parsetree,
           EVT_DDLCommandStart,
           "ddl_command_start",
           &trigdata);
 if (runlist == NIL)
  return;


 EventTriggerInvoke(runlist, &trigdata);


 list_free(runlist);





 CommandCounterIncrement();
}
