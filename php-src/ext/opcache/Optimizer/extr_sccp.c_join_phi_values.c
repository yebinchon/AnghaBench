
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_bool ;


 scalar_t__ IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_PARTIAL_OBJECT (int *) ;
 scalar_t__ IS_TOP (int *) ;
 int MAKE_BOT (int *) ;
 scalar_t__ SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 scalar_t__ join_partial_arrays (int *,int *) ;
 scalar_t__ join_partial_objects (int *,int *) ;
 int zend_is_identical (int *,int *) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void join_phi_values(zval *a, zval *b, zend_bool escape) {
 if (IS_BOT(a) || IS_TOP(b)) {
  return;
 }
 if (IS_TOP(a)) {
  zval_ptr_dtor_nogc(a);
  ZVAL_COPY(a, b);
  return;
 }
 if (IS_BOT(b)) {
  zval_ptr_dtor_nogc(a);
  MAKE_BOT(a);
  return;
 }
 if (IS_PARTIAL_ARRAY(a) || IS_PARTIAL_ARRAY(b)) {
  if (join_partial_arrays(a, b) != SUCCESS) {
   zval_ptr_dtor_nogc(a);
   MAKE_BOT(a);
  }
 } else if (IS_PARTIAL_OBJECT(a) || IS_PARTIAL_OBJECT(b)) {
  if (escape || join_partial_objects(a, b) != SUCCESS) {
   zval_ptr_dtor_nogc(a);
   MAKE_BOT(a);
  }
 } else if (!zend_is_identical(a, b)) {
  if (join_partial_arrays(a, b) != SUCCESS) {
   zval_ptr_dtor_nogc(a);
   MAKE_BOT(a);
  }
 }
}
