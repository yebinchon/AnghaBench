
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curr_proc; } ;
typedef TYPE_1__ PLyExecutionContext ;


 TYPE_1__* PLy_current_execution_context () ;
 int errcontext (char*) ;

__attribute__((used)) static void
plpython_trigger_error_callback(void *arg)
{
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();

 if (exec_ctx->curr_proc)
  errcontext("while modifying trigger row");
}
