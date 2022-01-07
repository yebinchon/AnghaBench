
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_6__ {int is_instanceof; scalar_t__ has_range; TYPE_2__ range; scalar_t__ ce; int type; } ;
typedef TYPE_1__ zend_ssa_var_info ;
typedef TYPE_2__ zend_ssa_range ;
typedef int zend_script ;
struct TYPE_8__ {int fn_flags; int * arg_info; } ;
typedef TYPE_3__ zend_op_array ;
typedef int zend_arg_info ;


 int MAY_BE_REF ;
 int ZEND_ACC_HAS_RETURN_TYPE ;
 int ZEND_ACC_RETURN_REFERENCE ;
 int zend_fetch_arg_info_type (int const*,int *,scalar_t__*) ;

void zend_init_func_return_info(const zend_op_array *op_array,
                                const zend_script *script,
                                zend_ssa_var_info *ret)
{
 if (op_array->fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
  zend_arg_info *ret_info = op_array->arg_info - 1;
  zend_ssa_range tmp_range = {0, 0, 0, 0};

  ret->type = zend_fetch_arg_info_type(script, ret_info, &ret->ce);
  if (op_array->fn_flags & ZEND_ACC_RETURN_REFERENCE) {
   ret->type |= MAY_BE_REF;
  }
  ret->is_instanceof = (ret->ce) ? 1 : 0;
  ret->range = tmp_range;
  ret->has_range = 0;
 }
}
