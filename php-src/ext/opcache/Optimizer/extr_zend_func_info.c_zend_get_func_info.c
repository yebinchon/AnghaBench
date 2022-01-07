
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_ssa ;
typedef int zend_op_array ;
struct TYPE_18__ {int fn_flags; scalar_t__ arg_info; int scope; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_3__ common; } ;
typedef TYPE_4__ zend_function ;
struct TYPE_17__ {int type; } ;
struct TYPE_20__ {TYPE_2__ return_info; } ;
typedef TYPE_5__ zend_func_info ;
typedef int zend_class_entry ;
struct TYPE_21__ {TYPE_4__* callee_func; TYPE_13__* caller_init_opline; int caller_op_array; } ;
typedef TYPE_6__ zend_call_info ;
typedef int uint32_t ;
struct TYPE_22__ {int (* info_func ) (TYPE_6__ const*,int const*) ;int info; int name_len; int name; } ;
typedef TYPE_7__ func_info_t ;
struct TYPE_16__ {char* function_name; } ;
struct TYPE_15__ {int op2; } ;
struct TYPE_14__ {TYPE_1__ common; } ;


 int CRT_CONSTANT_EX (int ,TYPE_13__*,int ) ;
 int MAY_BE_ANY ;
 int MAY_BE_ARRAY_KEY_ANY ;
 int MAY_BE_ARRAY_OF_ANY ;
 int MAY_BE_ARRAY_OF_REF ;
 int MAY_BE_NULL ;
 int MAY_BE_RC1 ;
 int MAY_BE_RCN ;
 int MAY_BE_REF ;
 scalar_t__ UNEXPECTED (int ) ;
 int ZEND_ACC_GENERATOR ;
 int ZEND_ACC_HAS_RETURN_TYPE ;
 int ZEND_ACC_RETURN_REFERENCE ;
 TYPE_5__* ZEND_FUNC_INFO (int *) ;
 scalar_t__ ZEND_INTERNAL_FUNCTION ;
 TYPE_7__* Z_PTR_P (int *) ;
 int * Z_STR_P (int ) ;
 int fprintf (int ,char*,char*) ;
 TYPE_10__* func ;
 int func_info ;
 int stderr ;
 int stub1 (TYPE_6__ const*,int const*) ;
 int zend_fetch_arg_info_type (int *,scalar_t__,int **) ;
 int * zend_hash_find_ex (int *,int *,int) ;
 int zend_optimizer_is_disabled_func (int ,int ) ;

uint32_t zend_get_func_info(const zend_call_info *call_info, const zend_ssa *ssa)
{
 uint32_t ret = 0;
 const zend_function *callee_func = call_info->callee_func;

 if (callee_func->type == ZEND_INTERNAL_FUNCTION) {
  zval *zv;
  zend_string *lcname = Z_STR_P(CRT_CONSTANT_EX(call_info->caller_op_array, call_info->caller_init_opline, call_info->caller_init_opline->op2));

  if (!call_info->callee_func->common.scope
    && (zv = zend_hash_find_ex(&func_info, lcname, 1))) {
   func_info_t *info = Z_PTR_P(zv);
   if (UNEXPECTED(zend_optimizer_is_disabled_func(info->name, info->name_len))) {
    ret = MAY_BE_NULL;
   } else if (info->info_func) {
    ret = info->info_func(call_info, ssa);
   } else {
    ret = info->info;
   }
   return ret;
  }

  if (callee_func->common.fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
   zend_class_entry *ce;
   ret = zend_fetch_arg_info_type(((void*)0), callee_func->common.arg_info - 1, &ce);
  } else {



   ret = MAY_BE_ANY | MAY_BE_ARRAY_KEY_ANY | MAY_BE_ARRAY_OF_ANY | MAY_BE_ARRAY_OF_REF
    | MAY_BE_RC1 | MAY_BE_RCN;
  }
  if (callee_func->common.fn_flags & ZEND_ACC_RETURN_REFERENCE) {
   ret |= MAY_BE_REF;
  }
 } else {

  zend_func_info *info = ZEND_FUNC_INFO((zend_op_array*)callee_func);
  if (info) {
   ret = info->return_info.type;
  }
  if (!ret) {
   ret = MAY_BE_ANY | MAY_BE_ARRAY_KEY_ANY | MAY_BE_ARRAY_OF_ANY | MAY_BE_ARRAY_OF_REF
    | MAY_BE_RC1 | MAY_BE_RCN;

   if ((callee_func->common.fn_flags & ZEND_ACC_RETURN_REFERENCE)
     && !(callee_func->common.fn_flags & ZEND_ACC_GENERATOR)) {
    ret |= MAY_BE_REF;
   }
  }
 }
 return ret;
}
