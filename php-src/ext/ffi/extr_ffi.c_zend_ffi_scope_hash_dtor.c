
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {struct TYPE_5__* tags; struct TYPE_5__* symbols; } ;
typedef TYPE_1__ zend_ffi_scope ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

__attribute__((used)) static void zend_ffi_scope_hash_dtor(zval *zv)
{
 zend_ffi_scope *scope = Z_PTR_P(zv);
 if (scope->symbols) {
  zend_hash_destroy(scope->symbols);
  free(scope->symbols);
 }
 if (scope->tags) {
  zend_hash_destroy(scope->tags);
  free(scope->tags);
 }
 free(scope);
}
