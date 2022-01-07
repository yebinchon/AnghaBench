
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_9__ {int var; } ;
struct TYPE_10__ {int extended_value; TYPE_2__ op1; int op1_type; } ;
typedef TYPE_3__ zend_op ;
typedef int uint32_t ;
struct TYPE_12__ {TYPE_4__* static_variables; TYPE_1__* scope; } ;
struct TYPE_11__ {scalar_t__ arData; } ;
struct TYPE_8__ {int ce_flags; } ;


 TYPE_7__* CG (int ) ;
 int E_COMPILE_ERROR ;
 int IS_CV ;
 int ZEND_BIND_STATIC ;
 int ZEND_HAS_STATIC_IN_METHODS ;
 int active_op_array ;
 int lookup_cv (int *) ;
 TYPE_3__* zend_emit_op (int *,int ,int *,int *) ;
 int zend_error_noreturn (int ,char*) ;
 int * zend_hash_update (TYPE_4__*,int *,int *) ;
 TYPE_4__* zend_new_array (int) ;
 scalar_t__ zend_string_equals_literal (int *,char*) ;

__attribute__((used)) static void zend_compile_static_var_common(zend_string *var_name, zval *value, uint32_t mode)
{
 zend_op *opline;
 if (!CG(active_op_array)->static_variables) {
  if (CG(active_op_array)->scope) {
   CG(active_op_array)->scope->ce_flags |= ZEND_HAS_STATIC_IN_METHODS;
  }
  CG(active_op_array)->static_variables = zend_new_array(8);
 }

 value = zend_hash_update(CG(active_op_array)->static_variables, var_name, value);

 if (zend_string_equals_literal(var_name, "this")) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use $this as static variable");
 }

 opline = zend_emit_op(((void*)0), ZEND_BIND_STATIC, ((void*)0), ((void*)0));
 opline->op1_type = IS_CV;
 opline->op1.var = lookup_cv(var_name);
 opline->extended_value = (uint32_t)((char*)value - (char*)CG(active_op_array)->static_variables->arData) | mode;
}
