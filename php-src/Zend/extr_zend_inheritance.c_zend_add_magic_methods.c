
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_function ;
struct TYPE_3__ {int * __debugInfo; int * __tostring; int * __callstatic; int ce_flags; int * __isset; int * __unset; int * __call; int * __set; int * __get; int * destructor; int * constructor; int * clone; int * unserialize_func; int * serialize_func; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZEND_ACC_USE_GUARDS ;
 char* ZEND_CALLSTATIC_FUNC_NAME ;
 char* ZEND_CALL_FUNC_NAME ;
 char* ZEND_CLONE_FUNC_NAME ;
 char* ZEND_CONSTRUCTOR_FUNC_NAME ;
 char* ZEND_DEBUGINFO_FUNC_NAME ;
 char* ZEND_DESTRUCTOR_FUNC_NAME ;
 char* ZEND_GET_FUNC_NAME ;
 char* ZEND_ISSET_FUNC_NAME ;
 char* ZEND_SET_FUNC_NAME ;
 char* ZEND_TOSTRING_FUNC_NAME ;
 char* ZEND_UNSET_FUNC_NAME ;
 char* ZSTR_VAL (int *) ;
 scalar_t__ zend_string_equals_literal (int *,char*) ;

__attribute__((used)) static void zend_add_magic_methods(zend_class_entry* ce, zend_string* mname, zend_function* fe)
{
 if (zend_string_equals_literal(mname, "serialize")) {
  ce->serialize_func = fe;
 } else if (zend_string_equals_literal(mname, "unserialize")) {
  ce->unserialize_func = fe;
 } else if (ZSTR_VAL(mname)[0] != '_' || ZSTR_VAL(mname)[1] != '_') {

 } else if (zend_string_equals_literal(mname, ZEND_CLONE_FUNC_NAME)) {
  ce->clone = fe;
 } else if (zend_string_equals_literal(mname, ZEND_CONSTRUCTOR_FUNC_NAME)) {
  ce->constructor = fe;
 } else if (zend_string_equals_literal(mname, ZEND_DESTRUCTOR_FUNC_NAME)) {
  ce->destructor = fe;
 } else if (zend_string_equals_literal(mname, ZEND_GET_FUNC_NAME)) {
  ce->__get = fe;
  ce->ce_flags |= ZEND_ACC_USE_GUARDS;
 } else if (zend_string_equals_literal(mname, ZEND_SET_FUNC_NAME)) {
  ce->__set = fe;
  ce->ce_flags |= ZEND_ACC_USE_GUARDS;
 } else if (zend_string_equals_literal(mname, ZEND_CALL_FUNC_NAME)) {
  ce->__call = fe;
 } else if (zend_string_equals_literal(mname, ZEND_UNSET_FUNC_NAME)) {
  ce->__unset = fe;
  ce->ce_flags |= ZEND_ACC_USE_GUARDS;
 } else if (zend_string_equals_literal(mname, ZEND_ISSET_FUNC_NAME)) {
  ce->__isset = fe;
  ce->ce_flags |= ZEND_ACC_USE_GUARDS;
 } else if (zend_string_equals_literal(mname, ZEND_CALLSTATIC_FUNC_NAME)) {
  ce->__callstatic = fe;
 } else if (zend_string_equals_literal(mname, ZEND_TOSTRING_FUNC_NAME)) {
  ce->__tostring = fe;
 } else if (zend_string_equals_literal(mname, ZEND_DEBUGINFO_FUNC_NAME)) {
  ce->__debugInfo = fe;
 }
}
