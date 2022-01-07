
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ output_to_client; scalar_t__ output_to_server; int assoc_context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int MemoryContextSwitchTo (int ) ;
 int emit_log_hook (TYPE_1__*) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int recursion_depth ;
 int send_message_to_frontend (TYPE_1__*) ;
 int send_message_to_server_log (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void
EmitErrorReport(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 MemoryContext oldcontext;

 recursion_depth++;
 CHECK_STACK_DEPTH();
 oldcontext = MemoryContextSwitchTo(edata->assoc_context);
 if (edata->output_to_server && emit_log_hook)
  (*emit_log_hook) (edata);


 if (edata->output_to_server)
  send_message_to_server_log(edata);


 if (edata->output_to_client)
  send_message_to_frontend(edata);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;
}
