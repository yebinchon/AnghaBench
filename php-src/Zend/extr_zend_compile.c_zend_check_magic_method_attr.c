
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_bool ;
typedef int uint32_t ;


 int E_WARNING ;
 int ZEND_ACC_PUBLIC ;
 int ZEND_ACC_STATIC ;
 int zend_error (int ,char*,char const*) ;

__attribute__((used)) static void zend_check_magic_method_attr(uint32_t attr, const char* method, zend_bool is_static)
{
 if (is_static) {
  if (!(attr & ZEND_ACC_PUBLIC) || !(attr & ZEND_ACC_STATIC)) {
   zend_error(E_WARNING, "The magic method %s() must have public visibility and be static", method);
  }
 } else if (!(attr & ZEND_ACC_PUBLIC) || (attr & ZEND_ACC_STATIC)) {
  zend_error(E_WARNING,
    "The magic method %s() must have public visibility and cannot be static",
    method);
 }
}
