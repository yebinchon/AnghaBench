
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_persistent_script ;
typedef int zend_file_cache_metainfo ;
struct TYPE_6__ {scalar_t__ doc_comment; int value; struct TYPE_6__* ce; } ;
typedef TYPE_1__ zend_class_constant ;


 int IS_SERIALIZED (TYPE_1__*) ;
 int SERIALIZE_PTR (TYPE_1__*) ;
 int SERIALIZE_STR (scalar_t__) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 int ZEND_ASSERT (int ) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int zend_file_cache_serialize_zval (int *,int *,int *,void*) ;

__attribute__((used)) static void zend_file_cache_serialize_class_constant(zval *zv,
                                                     zend_persistent_script *script,
                                                     zend_file_cache_metainfo *info,
                                                     void *buf)
{
 if (!IS_SERIALIZED(Z_PTR_P(zv))) {
  zend_class_constant *c;

  SERIALIZE_PTR(Z_PTR_P(zv));
  c = Z_PTR_P(zv);
  UNSERIALIZE_PTR(c);

  ZEND_ASSERT(c->ce != ((void*)0));
  if (!IS_SERIALIZED(c->ce)) {
   SERIALIZE_PTR(c->ce);

   zend_file_cache_serialize_zval(&c->value, script, info, buf);

   if (c->doc_comment) {
    SERIALIZE_STR(c->doc_comment);
   }
  }
 }
}
