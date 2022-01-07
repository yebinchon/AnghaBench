
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 int GC_ADDREF (int *) ;
 int GC_FLAGS (int *) ;
 int GC_PERSISTENT ;
 scalar_t__ IS_STRING ;
 int ZEND_ASSERT (int) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_NEW_STR (int *,int ) ;
 scalar_t__ Z_REFCOUNTED_P (int *) ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int zend_string_init (int ,int ,int ) ;

__attribute__((used)) static void browscap_zval_copy_ctor(zval *p)
{
 if (Z_REFCOUNTED_P(p)) {
  zend_string *str;

  ZEND_ASSERT(Z_TYPE_P(p) == IS_STRING);
  str = Z_STR_P(p);
  if (!(GC_FLAGS(str) & GC_PERSISTENT)) {
   GC_ADDREF(str);
  } else {
   ZVAL_NEW_STR(p, zend_string_init(ZSTR_VAL(str), ZSTR_LEN(str), 0));
  }
 }
}
