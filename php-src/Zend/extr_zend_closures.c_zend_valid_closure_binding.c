
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {int fn_flags; TYPE_4__* scope; int function_name; } ;
struct TYPE_11__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
struct TYPE_12__ {int this_ptr; TYPE_2__ func; } ;
typedef TYPE_3__ zend_closure ;
struct TYPE_13__ {scalar_t__ type; int name; } ;
typedef TYPE_4__ zend_class_entry ;
typedef int zend_bool ;
struct TYPE_14__ {int name; } ;


 int E_WARNING ;
 int ZEND_ACC_FAKE_CLOSURE ;
 int ZEND_ACC_STATIC ;
 int ZEND_ACC_USES_THIS ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 int ZSTR_VAL (int ) ;
 int Z_ISUNDEF (int ) ;
 TYPE_7__* Z_OBJCE_P (int *) ;
 int instanceof_function (TYPE_7__*,TYPE_4__*) ;
 int zend_error (int ,char*,...) ;

__attribute__((used)) static zend_bool zend_valid_closure_binding(
  zend_closure *closure, zval *newthis, zend_class_entry *scope)
{
 zend_function *func = &closure->func;
 zend_bool is_fake_closure = (func->common.fn_flags & ZEND_ACC_FAKE_CLOSURE) != 0;
 if (newthis) {
  if (func->common.fn_flags & ZEND_ACC_STATIC) {
   zend_error(E_WARNING, "Cannot bind an instance to a static closure");
   return 0;
  }

  if (is_fake_closure && func->common.scope &&
    !instanceof_function(Z_OBJCE_P(newthis), func->common.scope)) {

   zend_error(E_WARNING, "Cannot bind method %s::%s() to object of class %s",
     ZSTR_VAL(func->common.scope->name),
     ZSTR_VAL(func->common.function_name),
     ZSTR_VAL(Z_OBJCE_P(newthis)->name));
   return 0;
  }
 } else if (is_fake_closure && func->common.scope
   && !(func->common.fn_flags & ZEND_ACC_STATIC)) {
  zend_error(E_WARNING, "Cannot unbind $this of method");
  return 0;
 } else if (!is_fake_closure && !Z_ISUNDEF(closure->this_ptr)
   && (func->common.fn_flags & ZEND_ACC_USES_THIS)) {
  zend_error(E_WARNING, "Cannot unbind $this of closure using $this");
  return 0;
 }

 if (scope && scope != func->common.scope && scope->type == ZEND_INTERNAL_CLASS) {

  zend_error(E_WARNING, "Cannot bind closure to scope of internal class %s",
    ZSTR_VAL(scope->name));
  return 0;
 }

 if (is_fake_closure && scope != func->common.scope) {
  zend_error(E_WARNING, "Cannot rebind scope of closure created by ReflectionFunctionAbstract::getClosure()");
  return 0;
 }

 return 1;
}
