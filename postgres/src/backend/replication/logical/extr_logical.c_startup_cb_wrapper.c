
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* previous; void* arg; int callback; } ;
struct TYPE_8__ {int (* startup_cb ) (TYPE_3__*,int *,int) ;} ;
struct TYPE_10__ {int accept_writes; TYPE_1__ callbacks; int fast_forward; } ;
struct TYPE_9__ {char* callback_name; int report_location; TYPE_3__* ctx; } ;
typedef int OutputPluginOptions ;
typedef TYPE_2__ LogicalErrorCallbackState ;
typedef TYPE_3__ LogicalDecodingContext ;
typedef TYPE_4__ ErrorContextCallback ;


 int Assert (int) ;
 int InvalidXLogRecPtr ;
 TYPE_4__* error_context_stack ;
 int output_plugin_error_callback ;
 int stub1 (TYPE_3__*,int *,int) ;

__attribute__((used)) static void
startup_cb_wrapper(LogicalDecodingContext *ctx, OutputPluginOptions *opt, bool is_init)
{
 LogicalErrorCallbackState state;
 ErrorContextCallback errcallback;

 Assert(!ctx->fast_forward);


 state.ctx = ctx;
 state.callback_name = "startup";
 state.report_location = InvalidXLogRecPtr;
 errcallback.callback = output_plugin_error_callback;
 errcallback.arg = (void *) &state;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;


 ctx->accept_writes = 0;


 ctx->callbacks.startup_cb(ctx, opt, is_init);


 error_context_stack = errcallback.previous;
}
