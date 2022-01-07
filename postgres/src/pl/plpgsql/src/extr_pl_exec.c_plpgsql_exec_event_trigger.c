
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {int (* func_end ) (TYPE_2__*,TYPE_1__*) ;int (* func_beg ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_20__ {struct TYPE_20__* previous; TYPE_2__* arg; int callback; } ;
struct TYPE_19__ {int * err_text; int * err_stmt; int * evtrigdata; } ;
struct TYPE_18__ {scalar_t__ action; } ;
typedef int PLpgSQL_stmt ;
typedef TYPE_1__ PLpgSQL_function ;
typedef TYPE_2__ PLpgSQL_execstate ;
typedef int EventTriggerData ;
typedef TYPE_3__ ErrorContextCallback ;


 int ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT ;
 int ERROR ;
 int PLPGSQL_RC_RETURN ;
 int copy_plpgsql_datums (TYPE_2__*,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_3__* error_context_stack ;
 int exec_eval_cleanup (TYPE_2__*) ;
 int exec_stmt (TYPE_2__*,int *) ;
 void* gettext_noop (char*) ;
 int plpgsql_destroy_econtext (TYPE_2__*) ;
 int plpgsql_estate_setup (TYPE_2__*,TYPE_1__*,int *,int *) ;
 int plpgsql_exec_error_callback ;
 TYPE_8__** plpgsql_plugin_ptr ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;
 int stub2 (TYPE_2__*,TYPE_1__*) ;

void
plpgsql_exec_event_trigger(PLpgSQL_function *func, EventTriggerData *trigdata)
{
 PLpgSQL_execstate estate;
 ErrorContextCallback plerrcontext;
 int rc;




 plpgsql_estate_setup(&estate, func, ((void*)0), ((void*)0));
 estate.evtrigdata = trigdata;




 plerrcontext.callback = plpgsql_exec_error_callback;
 plerrcontext.arg = &estate;
 plerrcontext.previous = error_context_stack;
 error_context_stack = &plerrcontext;




 estate.err_text = gettext_noop("during initialization of execution state");
 copy_plpgsql_datums(&estate, func);




 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_beg)
  ((*plpgsql_plugin_ptr)->func_beg) (&estate, func);




 estate.err_text = ((void*)0);
 estate.err_stmt = (PLpgSQL_stmt *) (func->action);
 rc = exec_stmt(&estate, (PLpgSQL_stmt *) func->action);
 if (rc != PLPGSQL_RC_RETURN)
 {
  estate.err_stmt = ((void*)0);
  estate.err_text = ((void*)0);
  ereport(ERROR,
    (errcode(ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT),
     errmsg("control reached end of trigger procedure without RETURN")));
 }

 estate.err_stmt = ((void*)0);
 estate.err_text = gettext_noop("during function exit");




 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_end)
  ((*plpgsql_plugin_ptr)->func_end) (&estate, func);


 plpgsql_destroy_econtext(&estate);
 exec_eval_cleanup(&estate);





 error_context_stack = plerrcontext.previous;

 return;
}
