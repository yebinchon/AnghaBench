
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_fcall_info_cache ;
struct TYPE_4__ {int function_name; } ;
typedef TYPE_1__ zend_fcall_info ;
typedef int php_converter_object ;


 scalar_t__ FAILURE ;
 int U_INTERNAL_PROGRAM_ERROR ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_ARR (int ) ;
 int add_index_string (int *,int,char const*) ;
 int add_index_zval (int *,int ,int *) ;
 int array_init (int *) ;
 int efree (char*) ;
 int php_converter_throw_failure (int *,int ,char*,char*) ;
 int zend_array_destroy (int ) ;
 scalar_t__ zend_fcall_info_init (int *,int ,TYPE_1__*,int *,int *,char**) ;

__attribute__((used)) static void php_converter_resolve_callback(zval *zobj,
                                           php_converter_object *objval,
                                           const char *callback_name,
                                           zend_fcall_info *finfo,
                                           zend_fcall_info_cache *fcache) {
 char *errstr = ((void*)0);
 zval caller;

 array_init(&caller);
 Z_ADDREF_P(zobj);
 add_index_zval(&caller, 0, zobj);
 add_index_string(&caller, 1, callback_name);
 if (zend_fcall_info_init(&caller, 0, finfo, fcache, ((void*)0), &errstr) == FAILURE) {
  php_converter_throw_failure(objval, U_INTERNAL_PROGRAM_ERROR, "Error setting converter callback: %s", errstr);
 }
 zend_array_destroy(Z_ARR(caller));
 ZVAL_UNDEF(&finfo->function_name);
 if (errstr) {
  efree(errstr);
 }
}
