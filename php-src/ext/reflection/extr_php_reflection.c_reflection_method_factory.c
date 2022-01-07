
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {TYPE_1__* scope; int function_name; } ;
struct TYPE_10__ {TYPE_2__ common; } ;
typedef TYPE_3__ zend_function ;
typedef int zend_class_entry ;
struct TYPE_11__ {int obj; int * ce; int ref_type; TYPE_3__* ptr; } ;
typedef TYPE_4__ reflection_object ;
struct TYPE_8__ {int name; scalar_t__ trait_aliases; } ;


 int REF_TYPE_FUNCTION ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_STR_COPY (int ,int ) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_4__* Z_REFLECTION_P (int *) ;
 int reflection_instantiate (int ,int *) ;
 int reflection_method_ptr ;
 int reflection_prop_class (int *) ;
 int reflection_prop_name (int *) ;
 int zend_resolve_method_name (int *,TYPE_3__*) ;

__attribute__((used)) static void reflection_method_factory(zend_class_entry *ce, zend_function *method, zval *closure_object, zval *object)
{
 reflection_object *intern;

 reflection_instantiate(reflection_method_ptr, object);
 intern = Z_REFLECTION_P(object);
 intern->ptr = method;
 intern->ref_type = REF_TYPE_FUNCTION;
 intern->ce = ce;
 if (closure_object) {
  Z_ADDREF_P(closure_object);
  ZVAL_OBJ(&intern->obj, Z_OBJ_P(closure_object));
 }

 ZVAL_STR_COPY(reflection_prop_name(object),
  (method->common.scope && method->common.scope->trait_aliases)
   ? zend_resolve_method_name(ce, method) : method->common.function_name);
 ZVAL_STR_COPY(reflection_prop_class(object), method->common.scope->name);
}
