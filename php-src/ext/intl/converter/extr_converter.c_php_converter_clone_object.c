
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_11__ {int ce; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_12__ {int obj; void* dest; void* src; int error; } ;
typedef TYPE_2__ php_converter_object ;
typedef int UErrorCode ;


 int THROW_UFAILURE (TYPE_2__*,char*,int ) ;
 scalar_t__ U_FAILURE (int ) ;
 scalar_t__ U_SUCCESS (int ) ;
 int U_ZERO_ERROR ;
 int ZSTR_VAL (int *) ;
 int * intl_error_get_message (int *) ;
 int intl_errors_reset (int *) ;
 TYPE_2__* php_converter_fetch_object (TYPE_1__*) ;
 TYPE_1__* php_converter_object_ctor (int ,TYPE_2__**) ;
 int php_converter_set_callbacks (TYPE_2__*,void*) ;
 void* ucnv_safeClone (void*,int *,int *,int *) ;
 int zend_objects_clone_members (int *,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int zend_throw_exception (int *,int ,int ) ;

__attribute__((used)) static zend_object *php_converter_clone_object(zend_object *object) {
 php_converter_object *objval, *oldobj = php_converter_fetch_object(object);
 zend_object *retval = php_converter_object_ctor(object->ce, &objval);
 UErrorCode error = U_ZERO_ERROR;

 intl_errors_reset(&oldobj->error);

 objval->src = ucnv_safeClone(oldobj->src, ((void*)0), ((void*)0), &error);
 if (U_SUCCESS(error)) {
  error = U_ZERO_ERROR;
  objval->dest = ucnv_safeClone(oldobj->dest, ((void*)0), ((void*)0), &error);
 }
 if (U_FAILURE(error)) {
  zend_string *err_msg;
  THROW_UFAILURE(oldobj, "ucnv_safeClone", error);

  err_msg = intl_error_get_message(&oldobj->error);
  zend_throw_exception(((void*)0), ZSTR_VAL(err_msg), 0);
  zend_string_release_ex(err_msg, 0);

  return retval;
 }


 php_converter_set_callbacks(objval, objval->src );
 php_converter_set_callbacks(objval, objval->dest);

 zend_objects_clone_members(&(objval->obj), &(oldobj->obj));



 return retval;
}
