
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_ssa ;
struct TYPE_5__ {int arena; } ;
typedef TYPE_1__ zend_optimizer_ctx ;
typedef int zend_op_array ;


 scalar_t__ SUCCESS ;
 void* zend_arena_checkpoint (int ) ;
 int zend_arena_release (int *,void*) ;
 scalar_t__ zend_dfa_analyze_op_array (int *,TYPE_1__*,int *) ;
 int zend_dfa_optimize_op_array (int *,TYPE_1__*,int *,int *) ;

void zend_optimize_dfa(zend_op_array *op_array, zend_optimizer_ctx *ctx)
{
 void *checkpoint = zend_arena_checkpoint(ctx->arena);
 zend_ssa ssa;

 if (zend_dfa_analyze_op_array(op_array, ctx, &ssa) != SUCCESS) {
  zend_arena_release(&ctx->arena, checkpoint);
  return;
 }

 zend_dfa_optimize_op_array(op_array, ctx, &ssa, ((void*)0));


 zend_arena_release(&ctx->arena, checkpoint);
}
