
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


typedef void* XLogRecPtr ;
struct TYPE_17__ {struct TYPE_17__* previous; void* arg; int callback; } ;
struct TYPE_12__ {int (* message_cb ) (TYPE_5__*,TYPE_2__*,void*,int,char const*,int ,char const*) ;} ;
struct TYPE_16__ {int accept_writes; TYPE_1__ callbacks; void* write_location; int write_xid; int fast_forward; } ;
struct TYPE_15__ {char* callback_name; void* report_location; TYPE_5__* ctx; } ;
struct TYPE_14__ {TYPE_5__* private_data; } ;
struct TYPE_13__ {int xid; } ;
typedef int Size ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ ReorderBuffer ;
typedef TYPE_4__ LogicalErrorCallbackState ;
typedef TYPE_5__ LogicalDecodingContext ;
typedef TYPE_6__ ErrorContextCallback ;


 int Assert (int) ;
 int InvalidTransactionId ;
 TYPE_6__* error_context_stack ;
 int output_plugin_error_callback ;
 int stub1 (TYPE_5__*,TYPE_2__*,void*,int,char const*,int ,char const*) ;

__attribute__((used)) static void
message_cb_wrapper(ReorderBuffer *cache, ReorderBufferTXN *txn,
       XLogRecPtr message_lsn, bool transactional,
       const char *prefix, Size message_size, const char *message)
{
 LogicalDecodingContext *ctx = cache->private_data;
 LogicalErrorCallbackState state;
 ErrorContextCallback errcallback;

 Assert(!ctx->fast_forward);

 if (ctx->callbacks.message_cb == ((void*)0))
  return;


 state.ctx = ctx;
 state.callback_name = "message";
 state.report_location = message_lsn;
 errcallback.callback = output_plugin_error_callback;
 errcallback.arg = (void *) &state;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;


 ctx->accept_writes = 1;
 ctx->write_xid = txn != ((void*)0) ? txn->xid : InvalidTransactionId;
 ctx->write_location = message_lsn;


 ctx->callbacks.message_cb(ctx, txn, message_lsn, transactional, prefix,
         message_size, message);


 error_context_stack = errcallback.previous;
}
