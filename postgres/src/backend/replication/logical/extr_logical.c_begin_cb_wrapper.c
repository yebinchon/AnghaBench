
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {struct TYPE_17__* previous; void* arg; int callback; } ;
struct TYPE_12__ {int (* begin_cb ) (TYPE_5__*,TYPE_2__*) ;} ;
struct TYPE_16__ {int accept_writes; TYPE_1__ callbacks; int write_location; int write_xid; int fast_forward; } ;
struct TYPE_15__ {char* callback_name; int report_location; TYPE_5__* ctx; } ;
struct TYPE_14__ {TYPE_5__* private_data; } ;
struct TYPE_13__ {int first_lsn; int xid; } ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ ReorderBuffer ;
typedef TYPE_4__ LogicalErrorCallbackState ;
typedef TYPE_5__ LogicalDecodingContext ;
typedef TYPE_6__ ErrorContextCallback ;


 int Assert (int) ;
 TYPE_6__* error_context_stack ;
 int output_plugin_error_callback ;
 int stub1 (TYPE_5__*,TYPE_2__*) ;

__attribute__((used)) static void
begin_cb_wrapper(ReorderBuffer *cache, ReorderBufferTXN *txn)
{
 LogicalDecodingContext *ctx = cache->private_data;
 LogicalErrorCallbackState state;
 ErrorContextCallback errcallback;

 Assert(!ctx->fast_forward);


 state.ctx = ctx;
 state.callback_name = "begin";
 state.report_location = txn->first_lsn;
 errcallback.callback = output_plugin_error_callback;
 errcallback.arg = (void *) &state;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;


 ctx->accept_writes = 1;
 ctx->write_xid = txn->xid;
 ctx->write_location = txn->first_lsn;


 ctx->callbacks.begin_cb(ctx, txn);


 error_context_stack = errcallback.previous;
}
