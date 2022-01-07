
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


 scalar_t__ FAILURE ;
 int spl_object_storage_free_hash (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ spl_object_storage_get_hash (TYPE_1__*,TYPE_2__*,int *) ;
 int zend_hash_exists (int *,scalar_t__) ;
 int zend_hash_index_exists (int *,int ) ;

int spl_object_storage_contains(spl_SplObjectStorage *intern, zval *obj)
{
 int found;
 zend_hash_key key;
 if (spl_object_storage_get_hash(&key, intern, obj) == FAILURE) {
  return 0;
 }

 if (key.key) {
  found = zend_hash_exists(&intern->storage, key.key);
 } else {
  found = zend_hash_index_exists(&intern->storage, key.h);
 }
 spl_object_storage_free_hash(intern, &key);
 return found;
}
