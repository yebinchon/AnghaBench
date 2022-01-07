
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XactEvent ;


 int FreeExecutorState (int *) ;
 scalar_t__ XACT_EVENT_ABORT ;
 scalar_t__ XACT_EVENT_COMMIT ;
 scalar_t__ XACT_EVENT_PREPARE ;
 int * shared_simple_eval_estate ;
 int * simple_econtext_stack ;

void
plpgsql_xact_cb(XactEvent event, void *arg)
{






 if (event == XACT_EVENT_COMMIT || event == XACT_EVENT_PREPARE)
 {
  simple_econtext_stack = ((void*)0);

  if (shared_simple_eval_estate)
   FreeExecutorState(shared_simple_eval_estate);
  shared_simple_eval_estate = ((void*)0);
 }
 else if (event == XACT_EVENT_ABORT)
 {
  simple_econtext_stack = ((void*)0);
  shared_simple_eval_estate = ((void*)0);
 }
}
