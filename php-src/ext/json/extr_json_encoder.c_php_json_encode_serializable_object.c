
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int smart_str ;
struct TYPE_8__ {int error_code; } ;
typedef TYPE_2__ php_json_encoder ;
typedef int HashTable ;


 scalar_t__ EG (int ) ;
 int FAILURE ;
 scalar_t__ GC_IS_RECURSIVE (int *) ;
 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_UNDEF ;
 int PHP_JSON_ERROR_RECURSION ;
 int PHP_JSON_HASH_PROTECT_RECURSION (int *) ;
 int PHP_JSON_HASH_UNPROTECT_RECURSION (int *) ;
 int PHP_JSON_PARTIAL_OUTPUT_ON_ERROR ;
 int ZSTR_VAL (int ) ;
 int ZVAL_STRING (int *,char*) ;
 scalar_t__ Z_OBJ (int ) ;
 TYPE_1__* Z_OBJCE_P (int *) ;
 int * Z_OBJPROP_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int call_user_function (int *,int *,int *,int *,int ,int *) ;
 int exception ;
 int php_json_encode_array (int *,int *,int,TYPE_2__*) ;
 int php_json_encode_zval (int *,int *,int,TYPE_2__*) ;
 int smart_str_appendl (int *,char*,int) ;
 int zend_throw_exception_ex (int *,int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_json_encode_serializable_object(smart_str *buf, zval *val, int options, php_json_encoder *encoder)
{
 zend_class_entry *ce = Z_OBJCE_P(val);
 HashTable* myht = Z_OBJPROP_P(val);
 zval retval, fname;
 int return_code;

 if (myht && GC_IS_RECURSIVE(myht)) {
  encoder->error_code = PHP_JSON_ERROR_RECURSION;
  if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
   smart_str_appendl(buf, "null", 4);
  }
  return FAILURE;
 }

 PHP_JSON_HASH_PROTECT_RECURSION(myht);

 ZVAL_STRING(&fname, "jsonSerialize");

 if (FAILURE == call_user_function(((void*)0), val, &fname, &retval, 0, ((void*)0)) || Z_TYPE(retval) == IS_UNDEF) {
  if (!EG(exception)) {
   zend_throw_exception_ex(((void*)0), 0, "Failed calling %s::jsonSerialize()", ZSTR_VAL(ce->name));
  }
  zval_ptr_dtor(&fname);

  if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
   smart_str_appendl(buf, "null", 4);
  }
  PHP_JSON_HASH_UNPROTECT_RECURSION(myht);
  return FAILURE;
 }

 if (EG(exception)) {

  zval_ptr_dtor(&retval);
  zval_ptr_dtor(&fname);

  if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
   smart_str_appendl(buf, "null", 4);
  }
  PHP_JSON_HASH_UNPROTECT_RECURSION(myht);
  return FAILURE;
 }

 if ((Z_TYPE(retval) == IS_OBJECT) &&
  (Z_OBJ(retval) == Z_OBJ_P(val))) {

  PHP_JSON_HASH_UNPROTECT_RECURSION(myht);
  return_code = php_json_encode_array(buf, &retval, options, encoder);
 } else {

  return_code = php_json_encode_zval(buf, &retval, options, encoder);
  PHP_JSON_HASH_UNPROTECT_RECURSION(myht);
 }

 zval_ptr_dtor(&retval);
 zval_ptr_dtor(&fname);

 return return_code;
}
