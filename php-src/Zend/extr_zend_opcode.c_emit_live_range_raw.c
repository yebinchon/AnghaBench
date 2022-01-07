
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int last_live_range; scalar_t__ last_var; TYPE_2__* live_range; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_7__ {scalar_t__ var; scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_2__ zend_live_range ;
typedef scalar_t__ uint32_t ;


 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_CALL_VAR_NUM (int *,scalar_t__) ;
 TYPE_2__* erealloc (TYPE_2__*,int) ;

__attribute__((used)) static void emit_live_range_raw(
  zend_op_array *op_array, uint32_t var_num, uint32_t kind, uint32_t start, uint32_t end) {
 zend_live_range *range;

 op_array->last_live_range++;
 op_array->live_range = erealloc(op_array->live_range,
  sizeof(zend_live_range) * op_array->last_live_range);

 ZEND_ASSERT(start < end);
 range = &op_array->live_range[op_array->last_live_range - 1];
 range->var = (uint32_t) (intptr_t) ZEND_CALL_VAR_NUM(((void*)0), op_array->last_var + var_num);
 range->var |= kind;
 range->start = start;
 range->end = end;
}
