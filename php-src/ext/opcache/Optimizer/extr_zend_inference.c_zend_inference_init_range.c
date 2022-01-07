
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* vars; TYPE_2__* var_info; } ;
typedef TYPE_4__ zend_ssa ;
typedef int zend_op_array ;
typedef void* zend_long ;
typedef void* zend_bool ;
struct TYPE_8__ {int scc; } ;
struct TYPE_6__ {void* overflow; void* max; void* min; void* underflow; } ;
struct TYPE_7__ {int has_range; TYPE_1__ range; } ;


 int LOG_SSA_RANGE (char*,int ,int,char*,void*,void*,char*) ;
 void* ZEND_LONG_MAX ;
 void* ZEND_LONG_MIN ;

void zend_inference_init_range(const zend_op_array *op_array, zend_ssa *ssa, int var, zend_bool underflow, zend_long min, zend_long max, zend_bool overflow)
{
 if (underflow) {
  min = ZEND_LONG_MIN;
 }
 if (overflow) {
  max = ZEND_LONG_MAX;
 }
 ssa->var_info[var].has_range = 1;
 ssa->var_info[var].range.underflow = underflow;
 ssa->var_info[var].range.min = min;
 ssa->var_info[var].range.max = max;
 ssa->var_info[var].range.overflow = overflow;
 LOG_SSA_RANGE("  change range (init      SCC %2d) %2d [%s%ld..%ld%s]\n", ssa->vars[var].scc, var, (underflow?"-- ":""), min, max, (overflow?" ++":""));
}
