
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_persistent_script ;
struct TYPE_5__ {scalar_t__ doc_comment; int value; struct TYPE_5__* ce; } ;
typedef TYPE_1__ zend_class_constant ;


 int IS_UNSERIALIZED (TYPE_1__*) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 int UNSERIALIZE_STR (scalar_t__) ;
 int ZEND_ASSERT (int ) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int zend_file_cache_unserialize_zval (int *,int *,void*) ;

__attribute__((used)) static void zend_file_cache_unserialize_class_constant(zval *zv,
                                                       zend_persistent_script *script,
                                                       void *buf)
{
 if (!IS_UNSERIALIZED(Z_PTR_P(zv))) {
  zend_class_constant *c;

  UNSERIALIZE_PTR(Z_PTR_P(zv));
  c = Z_PTR_P(zv);

  ZEND_ASSERT(c->ce != ((void*)0));
  if (!IS_UNSERIALIZED(c->ce)) {
   UNSERIALIZE_PTR(c->ce);

   zend_file_cache_unserialize_zval(&c->value, script, buf);

   if (c->doc_comment) {
    UNSERIALIZE_STR(c->doc_comment);
   }
  }
 }
}
