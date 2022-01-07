
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int function_name; } ;
struct TYPE_7__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
struct TYPE_8__ {int obj; int * ce; int ref_type; TYPE_2__* ptr; } ;
typedef TYPE_3__ reflection_object ;


 int REF_TYPE_FUNCTION ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_STR_COPY (int ,int ) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_3__* Z_REFLECTION_P (int *) ;
 int reflection_function_ptr ;
 int reflection_instantiate (int ,int *) ;
 int reflection_prop_name (int *) ;

__attribute__((used)) static void reflection_function_factory(zend_function *function, zval *closure_object, zval *object)
{
 reflection_object *intern;
 reflection_instantiate(reflection_function_ptr, object);
 intern = Z_REFLECTION_P(object);
 intern->ptr = function;
 intern->ref_type = REF_TYPE_FUNCTION;
 intern->ce = ((void*)0);
 if (closure_object) {
  Z_ADDREF_P(closure_object);
  ZVAL_OBJ(&intern->obj, Z_OBJ_P(closure_object));
 }
 ZVAL_STR_COPY(reflection_prop_name(object), function->common.function_name);
}
