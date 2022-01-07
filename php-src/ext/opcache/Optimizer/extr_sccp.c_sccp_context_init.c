
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
struct TYPE_11__ {int vars_count; TYPE_1__* vars; } ;
typedef TYPE_2__ zend_ssa ;
struct TYPE_12__ {int arena; } ;
typedef TYPE_3__ zend_optimizer_ctx ;
struct TYPE_13__ {int last_var; } ;
typedef TYPE_4__ zend_op_array ;
typedef int zend_call_info ;
struct TYPE_14__ {int * values; int bot; int top; int ** call_map; } ;
typedef TYPE_5__ sccp_ctx ;
struct TYPE_10__ {scalar_t__ alias; } ;


 int MAKE_BOT (int *) ;
 int MAKE_TOP (int *) ;
 int * zend_arena_alloc (int *,int) ;

__attribute__((used)) static void sccp_context_init(zend_optimizer_ctx *ctx, sccp_ctx *sccp,
  zend_ssa *ssa, zend_op_array *op_array, zend_call_info **call_map) {
 int i;
 sccp->call_map = call_map;
 sccp->values = zend_arena_alloc(&ctx->arena, sizeof(zval) * ssa->vars_count);

 MAKE_TOP(&sccp->top);
 MAKE_BOT(&sccp->bot);

 i = 0;
 for (; i < op_array->last_var; ++i) {


  MAKE_BOT(&sccp->values[i]);
 }
 for (; i < ssa->vars_count; ++i) {
  if (ssa->vars[i].alias) {
   MAKE_BOT(&sccp->values[i]);
  } else {
   MAKE_TOP(&sccp->values[i]);
  }
 }
}
