
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_21__ {int function_table; } ;
typedef TYPE_4__ zend_script ;
struct TYPE_22__ {TYPE_3__* scope; int filename; } ;
typedef TYPE_5__ zend_op_array ;
struct TYPE_23__ {int opcode; int op2; int op2_type; int op1_type; } ;
typedef TYPE_6__ zend_op ;
struct TYPE_19__ {int fn_flags; TYPE_3__* scope; } ;
struct TYPE_18__ {int filename; } ;
struct TYPE_24__ {TYPE_2__ common; TYPE_1__ op_array; int type; } ;
typedef TYPE_7__ zend_function ;
struct TYPE_25__ {TYPE_7__* constructor; int type; int function_table; } ;
typedef TYPE_8__ zend_class_entry ;
typedef int zend_bool ;
struct TYPE_20__ {int ce_flags; int function_table; } ;


 int * CRT_CONSTANT (int ) ;
 int * EG (int ) ;
 int IS_CONST ;
 int IS_STRING ;
 int IS_UNUSED ;
 int ZEND_ACC_FINAL ;
 int ZEND_ACC_PRIVATE ;
 int ZEND_ACC_PUBLIC ;
 int ZEND_ACC_TRAIT ;





 int ZEND_INTERNAL_FUNCTION ;

 int ZEND_USER_CLASS ;
 int ZEND_USER_FUNCTION ;
 int * Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int function_table ;
 TYPE_8__* get_class_entry_from_op1 (TYPE_4__*,TYPE_5__*,TYPE_6__*) ;
 TYPE_7__* zend_hash_find_ptr (int *,int *) ;

zend_function *zend_optimizer_get_called_func(
  zend_script *script, zend_op_array *op_array, zend_op *opline)
{
 switch (opline->opcode) {
  case 133:
  {
   zend_string *function_name = Z_STR_P(CRT_CONSTANT(opline->op2));
   zend_function *func;
   if (script && (func = zend_hash_find_ptr(&script->function_table, function_name)) != ((void*)0)) {
    return func;
   } else if ((func = zend_hash_find_ptr(EG(function_table), function_name)) != ((void*)0)) {
    if (func->type == ZEND_INTERNAL_FUNCTION) {
     return func;
    } else if (func->type == ZEND_USER_FUNCTION &&
               func->op_array.filename &&
               func->op_array.filename == op_array->filename) {
     return func;
    }
   }
   break;
  }
  case 132:
  case 130:
   if (opline->op2_type == IS_CONST && Z_TYPE_P(CRT_CONSTANT(opline->op2)) == IS_STRING) {
    zval *function_name = CRT_CONSTANT(opline->op2) + 1;
    zend_function *func;
    if (script && (func = zend_hash_find_ptr(&script->function_table, Z_STR_P(function_name)))) {
     return func;
    } else if ((func = zend_hash_find_ptr(EG(function_table), Z_STR_P(function_name))) != ((void*)0)) {
     if (func->type == ZEND_INTERNAL_FUNCTION) {
      return func;
     } else if (func->type == ZEND_USER_FUNCTION &&
                func->op_array.filename &&
                func->op_array.filename == op_array->filename) {
      return func;
     }
    }
   }
   break;
  case 129:
   if (opline->op2_type == IS_CONST && Z_TYPE_P(CRT_CONSTANT(opline->op2)) == IS_STRING) {
    zend_class_entry *ce = get_class_entry_from_op1(
     script, op_array, opline);
    if (ce) {
     zend_string *func_name = Z_STR_P(CRT_CONSTANT(opline->op2) + 1);
     zend_function *fbc = zend_hash_find_ptr(&ce->function_table, func_name);
     if (fbc) {
      zend_bool is_public = (fbc->common.fn_flags & ZEND_ACC_PUBLIC) != 0;
      zend_bool same_scope = fbc->common.scope == op_array->scope;
      if (is_public|| same_scope) {
       return fbc;
      }
     }
    }
   }
   break;
  case 131:
   if (opline->op1_type == IS_UNUSED
     && opline->op2_type == IS_CONST && Z_TYPE_P(CRT_CONSTANT(opline->op2)) == IS_STRING
     && op_array->scope && !(op_array->scope->ce_flags & ZEND_ACC_TRAIT)) {
    zend_string *method_name = Z_STR_P(CRT_CONSTANT(opline->op2) + 1);
    zend_function *fbc = zend_hash_find_ptr(
     &op_array->scope->function_table, method_name);
    if (fbc) {
     zend_bool is_private = (fbc->common.fn_flags & ZEND_ACC_PRIVATE) != 0;
     zend_bool is_final = (fbc->common.fn_flags & ZEND_ACC_FINAL) != 0;
     zend_bool same_scope = fbc->common.scope == op_array->scope;
     if ((is_private && same_scope)
       || (is_final && (!is_private || same_scope))) {
      return fbc;
     }
    }
   }
   break;
  case 128:
  {
   zend_class_entry *ce = get_class_entry_from_op1(
    script, op_array, opline);
   if (ce && ce->type == ZEND_USER_CLASS) {
    return ce->constructor;
   }
   break;
  }
 }
 return ((void*)0);
}
