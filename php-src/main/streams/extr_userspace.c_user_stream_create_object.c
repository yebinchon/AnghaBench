
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
struct TYPE_12__ {void* object; int called_scope; TYPE_2__* function_handler; } ;
typedef TYPE_3__ zend_fcall_info_cache ;
struct TYPE_13__ {int size; int no_separation; int * params; scalar_t__ param_count; int * retval; void* object; int function_name; } ;
typedef TYPE_4__ zend_fcall_info ;
struct php_user_stream_wrapper {TYPE_9__* ce; } ;
struct TYPE_14__ {int res; } ;
typedef TYPE_5__ php_stream_context ;
typedef int fci ;
struct TYPE_15__ {int ce_flags; TYPE_2__* constructor; int name; } ;
struct TYPE_10__ {int function_name; } ;
struct TYPE_11__ {TYPE_1__ common; } ;


 int E_WARNING ;
 scalar_t__ FAILURE ;
 int GC_ADDREF (int ) ;
 int ZEND_ACC_EXPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_INTERFACE ;
 int ZEND_ACC_TRAIT ;
 int ZSTR_VAL (int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_OBJCE_P (int *) ;
 void* Z_OBJ_P (int *) ;
 int add_property_null (int *,char*) ;
 int add_property_resource (int *,char*,int ) ;
 scalar_t__ object_init_ex (int *,TYPE_9__*) ;
 int php_error_docref (int *,int ,char*,int ,int ) ;
 scalar_t__ zend_call_function (TYPE_4__*,TYPE_3__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void user_stream_create_object(struct php_user_stream_wrapper *uwrap, php_stream_context *context, zval *object)
{
 if (uwrap->ce->ce_flags & (ZEND_ACC_INTERFACE|ZEND_ACC_TRAIT|ZEND_ACC_IMPLICIT_ABSTRACT_CLASS|ZEND_ACC_EXPLICIT_ABSTRACT_CLASS)) {
  ZVAL_UNDEF(object);
  return;
 }


 if (object_init_ex(object, uwrap->ce) == FAILURE) {
  ZVAL_UNDEF(object);
  return;
 }

 if (context) {
  add_property_resource(object, "context", context->res);
  GC_ADDREF(context->res);
 } else {
  add_property_null(object, "context");
 }

 if (uwrap->ce->constructor) {
  zend_fcall_info fci;
  zend_fcall_info_cache fcc;
  zval retval;

  fci.size = sizeof(fci);
  ZVAL_UNDEF(&fci.function_name);
  fci.object = Z_OBJ_P(object);
  fci.retval = &retval;
  fci.param_count = 0;
  fci.params = ((void*)0);
  fci.no_separation = 1;

  fcc.function_handler = uwrap->ce->constructor;
  fcc.called_scope = Z_OBJCE_P(object);
  fcc.object = Z_OBJ_P(object);

  if (zend_call_function(&fci, &fcc) == FAILURE) {
   php_error_docref(((void*)0), E_WARNING, "Could not execute %s::%s()", ZSTR_VAL(uwrap->ce->name), ZSTR_VAL(uwrap->ce->constructor->common.function_name));
   zval_ptr_dtor(object);
   ZVAL_UNDEF(object);
  } else {
   zval_ptr_dtor(&retval);
  }
 }
}
