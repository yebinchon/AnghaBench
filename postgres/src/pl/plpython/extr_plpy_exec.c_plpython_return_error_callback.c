
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* curr_proc; } ;
struct TYPE_4__ {int is_procedure; } ;
typedef TYPE_2__ PLyExecutionContext ;


 TYPE_2__* PLy_current_execution_context () ;
 int errcontext (char*) ;

__attribute__((used)) static void
plpython_return_error_callback(void *arg)
{
 PLyExecutionContext *exec_ctx = PLy_current_execution_context();

 if (exec_ctx->curr_proc &&
  !exec_ctx->curr_proc->is_procedure)
  errcontext("while creating return value");
}
