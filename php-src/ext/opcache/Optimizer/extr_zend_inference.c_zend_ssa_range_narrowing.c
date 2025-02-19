
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ overflow; int max; int min; scalar_t__ underflow; } ;
typedef TYPE_1__ zend_ssa_range ;
struct TYPE_8__ {int * var_info; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_op_array ;


 int LOG_SSA_RANGE (char*,int,int,char*,int ,int ,char*) ;
 scalar_t__ zend_inference_calc_range (int const*,TYPE_2__*,int,int ,int,TYPE_1__*) ;
 scalar_t__ zend_inference_narrowing_meet (int *,TYPE_1__*) ;

__attribute__((used)) static int zend_ssa_range_narrowing(const zend_op_array *op_array, zend_ssa *ssa, int var, int scc)
{
 zend_ssa_range tmp;

 if (zend_inference_calc_range(op_array, ssa, var, 0, 1, &tmp)) {
  if (zend_inference_narrowing_meet(&ssa->var_info[var], &tmp)) {
   LOG_SSA_RANGE("  change range (narrowing SCC %2d) %2d [%s%ld..%ld%s]\n", scc, var, (tmp.underflow?"-- ":""), tmp.min, tmp.max, (tmp.overflow?" ++":""));
   return 1;
  }
 }
 return 0;
}
