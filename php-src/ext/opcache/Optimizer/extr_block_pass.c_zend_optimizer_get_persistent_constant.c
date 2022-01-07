
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ zend_constant ;


 int CG (int ) ;
 int CONST_NO_FILE_CACHE ;
 int CONST_PERSISTENT ;
 int EG (int ) ;
 int ZEND_COMPILE_WITH_FILE_CACHE ;
 int ZEND_CONSTANT_FLAGS (TYPE_1__*) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int compiler_options ;
 int zend_constants ;
 int * zend_get_special_const (int ,int ) ;
 TYPE_1__* zend_hash_find_ptr (int ,int *) ;

int zend_optimizer_get_persistent_constant(zend_string *name, zval *result, int copy)
{
 zval *zv;
 zend_constant *c = zend_hash_find_ptr(EG(zend_constants), name);
 if (c) {
  if ((ZEND_CONSTANT_FLAGS(c) & CONST_PERSISTENT)
   && (!(ZEND_CONSTANT_FLAGS(c) & CONST_NO_FILE_CACHE)
    || !(CG(compiler_options) & ZEND_COMPILE_WITH_FILE_CACHE))) {
   ZVAL_COPY_VALUE(result, &c->value);
   if (copy) {
    Z_TRY_ADDREF_P(result);
   }
   return 1;
  } else {
   return 0;
  }
 }


 zv = zend_get_special_const(ZSTR_VAL(name), ZSTR_LEN(name));
 if (zv) {
  ZVAL_COPY_VALUE(result, zv);
  return 1;
 }
 return 0;
}
