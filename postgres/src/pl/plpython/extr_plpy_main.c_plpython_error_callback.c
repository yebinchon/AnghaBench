
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_procedure; } ;
struct TYPE_3__ {TYPE_2__* curr_proc; } ;
typedef TYPE_1__ PLyExecutionContext ;


 int PLy_procedure_name (TYPE_2__*) ;
 int errcontext (char*,int ) ;

__attribute__((used)) static void
plpython_error_callback(void *arg)
{
 PLyExecutionContext *exec_ctx = (PLyExecutionContext *) arg;

 if (exec_ctx->curr_proc)
 {
  if (exec_ctx->curr_proc->is_procedure)
   errcontext("PL/Python procedure \"%s\"",
        PLy_procedure_name(exec_ctx->curr_proc));
  else
   errcontext("PL/Python function \"%s\"",
        PLy_procedure_name(exec_ctx->curr_proc));
 }
}
