
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int type; int * doc_comment; int * name; struct TYPE_5__* ce; } ;
typedef TYPE_1__ zend_property_info ;
typedef int zend_persistent_script ;


 int IS_UNSERIALIZED (TYPE_1__*) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 int UNSERIALIZE_STR (int *) ;
 int ZEND_ASSERT (int) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int zend_file_cache_unserialize_type (int *,int *,void*) ;

__attribute__((used)) static void zend_file_cache_unserialize_prop_info(zval *zv,
                                                  zend_persistent_script *script,
                                                  void *buf)
{
 if (!IS_UNSERIALIZED(Z_PTR_P(zv))) {
  zend_property_info *prop;

  UNSERIALIZE_PTR(Z_PTR_P(zv));
  prop = Z_PTR_P(zv);

  ZEND_ASSERT(prop->ce != ((void*)0) && prop->name != ((void*)0));
  if (!IS_UNSERIALIZED(prop->ce)) {
   UNSERIALIZE_PTR(prop->ce);
   UNSERIALIZE_STR(prop->name);
   if (prop->doc_comment) {
    UNSERIALIZE_STR(prop->doc_comment);
   }
   zend_file_cache_unserialize_type(&prop->type, script, buf);
  }
 }
}
