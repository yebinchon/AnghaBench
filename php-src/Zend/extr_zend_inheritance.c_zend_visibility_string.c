
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ZEND_ACC_PRIVATE ;
 int ZEND_ACC_PROTECTED ;
 int ZEND_ACC_PUBLIC ;
 int ZEND_ASSERT (int) ;

char *zend_visibility_string(uint32_t fn_flags)
{
 if (fn_flags & ZEND_ACC_PUBLIC) {
  return "public";
 } else if (fn_flags & ZEND_ACC_PRIVATE) {
  return "private";
 } else {
  ZEND_ASSERT(fn_flags & ZEND_ACC_PROTECTED);
  return "protected";
 }
}
