
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int type; int * doc_comment; int * name; struct TYPE_6__* ce; } ;
typedef TYPE_1__ zend_property_info ;
typedef int zend_persistent_script ;
typedef int zend_file_cache_metainfo ;


 int IS_SERIALIZED (TYPE_1__*) ;
 int SERIALIZE_PTR (TYPE_1__*) ;
 int SERIALIZE_STR (int *) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 int ZEND_ASSERT (int) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int zend_file_cache_serialize_type (int *,int *,int *,void*) ;

__attribute__((used)) static void zend_file_cache_serialize_prop_info(zval *zv,
                                                zend_persistent_script *script,
                                                zend_file_cache_metainfo *info,
                                                void *buf)
{
 if (!IS_SERIALIZED(Z_PTR_P(zv))) {
  zend_property_info *prop;

  SERIALIZE_PTR(Z_PTR_P(zv));
  prop = Z_PTR_P(zv);
  UNSERIALIZE_PTR(prop);

  ZEND_ASSERT(prop->ce != ((void*)0) && prop->name != ((void*)0));
  if (!IS_SERIALIZED(prop->ce)) {
   SERIALIZE_PTR(prop->ce);
   SERIALIZE_STR(prop->name);
   if (prop->doc_comment) {
    SERIALIZE_STR(prop->doc_comment);
   }
   zend_file_cache_serialize_type(&prop->type, script, info, buf);
  }
 }
}
