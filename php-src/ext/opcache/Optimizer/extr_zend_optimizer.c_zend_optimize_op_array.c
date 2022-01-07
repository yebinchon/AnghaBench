
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zend_optimizer_ctx ;
struct TYPE_7__ {scalar_t__ live_range; } ;
typedef TYPE_1__ zend_op_array ;


 int zend_optimize (TYPE_1__*,int *) ;
 int zend_recalc_live_ranges (TYPE_1__*,int *) ;
 int zend_redo_pass_two (TYPE_1__*) ;
 int zend_revert_pass_two (TYPE_1__*) ;

__attribute__((used)) static void zend_optimize_op_array(zend_op_array *op_array,
                                   zend_optimizer_ctx *ctx)
{

 zend_revert_pass_two(op_array);


 zend_optimize(op_array, ctx);


 zend_redo_pass_two(op_array);

 if (op_array->live_range) {
  zend_recalc_live_ranges(op_array, ((void*)0));
 }
}
