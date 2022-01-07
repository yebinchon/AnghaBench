
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int val; } ;
typedef TYPE_1__ zend_reference ;
typedef int zend_persistent_script ;
typedef int HashTable ;






 int IS_UNSERIALIZED (void*) ;
 int UNSERIALIZE_PTR (void*) ;
 int UNSERIALIZE_STR (void*) ;
 int ZVAL_PTR_DTOR ;
 void* Z_ARR_P (int *) ;
 int Z_ASTVAL_P (int *) ;
 void* Z_AST_P (int *) ;
 void* Z_REF_P (int *) ;
 void* Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_file_cache_unserialize_ast (int ,int *,void*) ;
 int zend_file_cache_unserialize_hash (int *,int *,void*,void (*) (int *,int *,void*),int ) ;

__attribute__((used)) static void zend_file_cache_unserialize_zval(zval *zv,
                                             zend_persistent_script *script,
                                             void *buf)
{
 switch (Z_TYPE_P(zv)) {
  case 128:
   if (!IS_UNSERIALIZED(Z_STR_P(zv))) {
    UNSERIALIZE_STR(Z_STR_P(zv));
   }
   break;
  case 131:
   if (!IS_UNSERIALIZED(Z_ARR_P(zv))) {
    HashTable *ht;

    UNSERIALIZE_PTR(Z_ARR_P(zv));
    ht = Z_ARR_P(zv);
    zend_file_cache_unserialize_hash(ht,
      script, buf, zend_file_cache_unserialize_zval, ZVAL_PTR_DTOR);
   }
   break;
  case 129:
   if (!IS_UNSERIALIZED(Z_REF_P(zv))) {
    zend_reference *ref;

    UNSERIALIZE_PTR(Z_REF_P(zv));
    ref = Z_REF_P(zv);
    zend_file_cache_unserialize_zval(&ref->val, script, buf);
   }
   break;
  case 130:
   if (!IS_UNSERIALIZED(Z_AST_P(zv))) {
    UNSERIALIZE_PTR(Z_AST_P(zv));
    zend_file_cache_unserialize_ast(Z_ASTVAL_P(zv), script, buf);
   }
   break;
 }
}
