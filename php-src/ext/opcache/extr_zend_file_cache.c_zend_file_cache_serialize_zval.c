
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int zval ;
struct TYPE_14__ {int val; } ;
typedef TYPE_1__ zend_reference ;
typedef int zend_persistent_script ;
typedef int zend_file_cache_metainfo ;
typedef TYPE_1__ zend_ast_ref ;
typedef TYPE_1__ HashTable ;


 int GC_AST (TYPE_1__*) ;



 int IS_SERIALIZED (TYPE_1__*) ;

 int SERIALIZE_PTR (TYPE_1__*) ;
 int SERIALIZE_STR (TYPE_1__*) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 TYPE_1__* Z_ARR_P (int *) ;
 TYPE_1__* Z_AST_P (int *) ;
 TYPE_1__* Z_REF_P (int *) ;
 TYPE_1__* Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_file_cache_serialize_ast (int ,int *,int *,void*) ;
 int zend_file_cache_serialize_hash (TYPE_1__*,int *,int *,void*,void (*) (int *,int *,int *,void*)) ;

__attribute__((used)) static void zend_file_cache_serialize_zval(zval *zv,
                                           zend_persistent_script *script,
                                           zend_file_cache_metainfo *info,
                                           void *buf)
{
 switch (Z_TYPE_P(zv)) {
  case 128:
   if (!IS_SERIALIZED(Z_STR_P(zv))) {
    SERIALIZE_STR(Z_STR_P(zv));
   }
   break;
  case 131:
   if (!IS_SERIALIZED(Z_ARR_P(zv))) {
    HashTable *ht;

    SERIALIZE_PTR(Z_ARR_P(zv));
    ht = Z_ARR_P(zv);
    UNSERIALIZE_PTR(ht);
    zend_file_cache_serialize_hash(ht, script, info, buf, zend_file_cache_serialize_zval);
   }
   break;
  case 129:
   if (!IS_SERIALIZED(Z_REF_P(zv))) {
    zend_reference *ref;

    SERIALIZE_PTR(Z_REF_P(zv));
    ref = Z_REF_P(zv);
    UNSERIALIZE_PTR(ref);
    zend_file_cache_serialize_zval(&ref->val, script, info, buf);
   }
   break;
  case 130:
   if (!IS_SERIALIZED(Z_AST_P(zv))) {
    zend_ast_ref *ast;

    SERIALIZE_PTR(Z_AST_P(zv));
    ast = Z_AST_P(zv);
    UNSERIALIZE_PTR(ast);
    zend_file_cache_serialize_ast(GC_AST(ast), script, info, buf);
   }
   break;
 }
}
