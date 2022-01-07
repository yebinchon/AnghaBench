
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 scalar_t__ IS_STRING ;
 int ZEND_ASSERT (int) ;
 int ZVAL_STR (int *,int *) ;
 int Z_REFCOUNTED_P (int *) ;
 int Z_REFCOUNT_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int Z_TRY_DELREF_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * zend_string_init (int ,int ,int ) ;

__attribute__((used)) static void sodium_separate_string(zval *zv) {
 ZEND_ASSERT(Z_TYPE_P(zv) == IS_STRING);
 if (!Z_REFCOUNTED_P(zv) || Z_REFCOUNT_P(zv) > 1) {
  zend_string *copy = zend_string_init(Z_STRVAL_P(zv), Z_STRLEN_P(zv), 0);
  Z_TRY_DELREF_P(zv);
  ZVAL_STR(zv, copy);
 }
}
