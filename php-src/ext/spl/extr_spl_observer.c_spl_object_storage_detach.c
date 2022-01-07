
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int h; scalar_t__ key; } ;
typedef TYPE_1__ zend_hash_key ;
struct TYPE_9__ {int storage; } ;
typedef TYPE_2__ spl_SplObjectStorage ;


 int FAILURE ;
 int spl_object_storage_free_hash (TYPE_2__*,TYPE_1__*) ;
 int spl_object_storage_get_hash (TYPE_1__*,TYPE_2__*,int *) ;
 int zend_hash_del (int *,scalar_t__) ;
 int zend_hash_index_del (int *,int ) ;

__attribute__((used)) static int spl_object_storage_detach(spl_SplObjectStorage *intern, zval *obj)
{
 int ret = FAILURE;
 zend_hash_key key;
 if (spl_object_storage_get_hash(&key, intern, obj) == FAILURE) {
  return ret;
 }
 if (key.key) {
  ret = zend_hash_del(&intern->storage, key.key);
 } else {
  ret = zend_hash_index_del(&intern->storage, key.h);
 }
 spl_object_storage_free_hash(intern, &key);

 return ret;
}
