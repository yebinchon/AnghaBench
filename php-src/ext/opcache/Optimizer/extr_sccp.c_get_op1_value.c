
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_11__ {int op1_use; } ;
typedef TYPE_3__ zend_ssa_op ;
struct TYPE_10__ {int constant; } ;
struct TYPE_12__ {scalar_t__ op1_type; TYPE_2__ op1; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_9__ {int op_array; } ;
struct TYPE_13__ {int * values; TYPE_1__ scdf; } ;
typedef TYPE_5__ sccp_ctx ;


 int * CT_CONSTANT_EX (int ,int ) ;
 scalar_t__ IS_CONST ;

__attribute__((used)) static zval *get_op1_value(sccp_ctx *ctx, zend_op *opline, zend_ssa_op *ssa_op) {
 if (opline->op1_type == IS_CONST) {
  return CT_CONSTANT_EX(ctx->scdf.op_array, opline->op1.constant);
 } else if (ssa_op->op1_use != -1) {
  return &ctx->values[ssa_op->op1_use];
 } else {
  return ((void*)0);
 }
}
