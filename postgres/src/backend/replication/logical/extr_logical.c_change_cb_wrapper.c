
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {struct TYPE_21__* previous; void* arg; int callback; } ;
struct TYPE_15__ {int (* change_cb ) (TYPE_6__*,TYPE_2__*,int ,TYPE_3__*) ;} ;
struct TYPE_20__ {int accept_writes; TYPE_1__ callbacks; int write_location; int write_xid; int fast_forward; } ;
struct TYPE_19__ {char* callback_name; int report_location; TYPE_6__* ctx; } ;
struct TYPE_18__ {TYPE_6__* private_data; } ;
struct TYPE_17__ {int lsn; } ;
struct TYPE_16__ {int xid; } ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ ReorderBufferChange ;
typedef TYPE_4__ ReorderBuffer ;
typedef int Relation ;
typedef TYPE_5__ LogicalErrorCallbackState ;
typedef TYPE_6__ LogicalDecodingContext ;
typedef TYPE_7__ ErrorContextCallback ;


 int Assert (int) ;
 TYPE_7__* error_context_stack ;
 int output_plugin_error_callback ;
 int stub1 (TYPE_6__*,TYPE_2__*,int ,TYPE_3__*) ;

__attribute__((used)) static void
change_cb_wrapper(ReorderBuffer *cache, ReorderBufferTXN *txn,
      Relation relation, ReorderBufferChange *change)
{
 LogicalDecodingContext *ctx = cache->private_data;
 LogicalErrorCallbackState state;
 ErrorContextCallback errcallback;

 Assert(!ctx->fast_forward);


 state.ctx = ctx;
 state.callback_name = "change";
 state.report_location = change->lsn;
 errcallback.callback = output_plugin_error_callback;
 errcallback.arg = (void *) &state;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;


 ctx->accept_writes = 1;
 ctx->write_xid = txn->xid;







 ctx->write_location = change->lsn;

 ctx->callbacks.change_cb(ctx, txn, relation, change);


 error_context_stack = errcallback.previous;
}
