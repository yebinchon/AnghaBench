
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int debug_level; int optimization_level; } ;
typedef TYPE_1__ zend_optimizer_ctx ;
struct TYPE_24__ {scalar_t__ type; } ;
typedef TYPE_2__ zend_op_array ;


 int ZEND_DUMP_AFTER_OPTIMIZER ;
 int ZEND_DUMP_AFTER_PASS_1 ;
 int ZEND_DUMP_AFTER_PASS_10 ;
 int ZEND_DUMP_AFTER_PASS_11 ;
 int ZEND_DUMP_AFTER_PASS_13 ;
 int ZEND_DUMP_AFTER_PASS_3 ;
 int ZEND_DUMP_AFTER_PASS_4 ;
 int ZEND_DUMP_AFTER_PASS_5 ;
 int ZEND_DUMP_AFTER_PASS_6 ;
 int ZEND_DUMP_AFTER_PASS_9 ;
 int ZEND_DUMP_BEFORE_OPTIMIZER ;
 int ZEND_DUMP_LIVE_RANGES ;
 scalar_t__ ZEND_EVAL_CODE ;
 int ZEND_OPTIMIZER_PASS_1 ;
 int ZEND_OPTIMIZER_PASS_10 ;
 int ZEND_OPTIMIZER_PASS_11 ;
 int ZEND_OPTIMIZER_PASS_13 ;
 int ZEND_OPTIMIZER_PASS_3 ;
 int ZEND_OPTIMIZER_PASS_4 ;
 int ZEND_OPTIMIZER_PASS_5 ;
 int ZEND_OPTIMIZER_PASS_6 ;
 int ZEND_OPTIMIZER_PASS_7 ;
 int ZEND_OPTIMIZER_PASS_9 ;
 int zend_dump_op_array (TYPE_2__*,int ,char*,int *) ;
 int zend_optimize_cfg (TYPE_2__*,TYPE_1__*) ;
 int zend_optimize_dfa (TYPE_2__*,TYPE_1__*) ;
 int zend_optimize_func_calls (TYPE_2__*,TYPE_1__*) ;
 int zend_optimize_temporary_variables (TYPE_2__*,TYPE_1__*) ;
 int zend_optimizer_compact_literals (TYPE_2__*,TYPE_1__*) ;
 int zend_optimizer_compact_vars (TYPE_2__*) ;
 int zend_optimizer_nop_removal (TYPE_2__*,TYPE_1__*) ;
 int zend_optimizer_pass1 (TYPE_2__*,TYPE_1__*) ;
 int zend_optimizer_pass3 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void zend_optimize(zend_op_array *op_array,
                          zend_optimizer_ctx *ctx)
{
 if (op_array->type == ZEND_EVAL_CODE) {
  return;
 }

 if (ctx->debug_level & ZEND_DUMP_BEFORE_OPTIMIZER) {
  zend_dump_op_array(op_array, ZEND_DUMP_LIVE_RANGES, "before optimizer", ((void*)0));
 }
 if (ZEND_OPTIMIZER_PASS_1 & ctx->optimization_level) {
  zend_optimizer_pass1(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_1) {
   zend_dump_op_array(op_array, 0, "after pass 1", ((void*)0));
  }
 }




 if (ZEND_OPTIMIZER_PASS_3 & ctx->optimization_level) {
  zend_optimizer_pass3(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_3) {
   zend_dump_op_array(op_array, 0, "after pass 3", ((void*)0));
  }
 }




 if (ZEND_OPTIMIZER_PASS_4 & ctx->optimization_level) {
  zend_optimize_func_calls(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_4) {
   zend_dump_op_array(op_array, 0, "after pass 4", ((void*)0));
  }
 }




 if (ZEND_OPTIMIZER_PASS_5 & ctx->optimization_level) {
  zend_optimize_cfg(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_5) {
   zend_dump_op_array(op_array, 0, "after pass 5", ((void*)0));
  }
 }




 if ((ZEND_OPTIMIZER_PASS_6 & ctx->optimization_level) &&
     !(ZEND_OPTIMIZER_PASS_7 & ctx->optimization_level)) {
  zend_optimize_dfa(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_6) {
   zend_dump_op_array(op_array, 0, "after pass 6", ((void*)0));
  }
 }




 if (ZEND_OPTIMIZER_PASS_9 & ctx->optimization_level) {
  zend_optimize_temporary_variables(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_9) {
   zend_dump_op_array(op_array, 0, "after pass 9", ((void*)0));
  }
 }




 if (((ZEND_OPTIMIZER_PASS_10|ZEND_OPTIMIZER_PASS_5) & ctx->optimization_level) == ZEND_OPTIMIZER_PASS_10) {
  zend_optimizer_nop_removal(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_10) {
   zend_dump_op_array(op_array, 0, "after pass 10", ((void*)0));
  }
 }




 if ((ZEND_OPTIMIZER_PASS_11 & ctx->optimization_level) &&
     (!(ZEND_OPTIMIZER_PASS_6 & ctx->optimization_level) ||
      !(ZEND_OPTIMIZER_PASS_7 & ctx->optimization_level))) {
  zend_optimizer_compact_literals(op_array, ctx);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_11) {
   zend_dump_op_array(op_array, 0, "after pass 11", ((void*)0));
  }
 }

 if ((ZEND_OPTIMIZER_PASS_13 & ctx->optimization_level) &&
     (!(ZEND_OPTIMIZER_PASS_6 & ctx->optimization_level) ||
      !(ZEND_OPTIMIZER_PASS_7 & ctx->optimization_level))) {
  zend_optimizer_compact_vars(op_array);
  if (ctx->debug_level & ZEND_DUMP_AFTER_PASS_13) {
   zend_dump_op_array(op_array, 0, "after pass 13", ((void*)0));
  }
 }

 if (ZEND_OPTIMIZER_PASS_7 & ctx->optimization_level) {
  return;
 }

 if (ctx->debug_level & ZEND_DUMP_AFTER_OPTIMIZER) {
  zend_dump_op_array(op_array, 0, "after optimizer", ((void*)0));
 }
}
