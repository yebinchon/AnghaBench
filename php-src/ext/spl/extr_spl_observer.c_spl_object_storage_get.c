
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h; scalar_t__ key; } ;
typedef TYPE_1__ zend_hash_key ;
typedef int spl_SplObjectStorageElement ;
struct TYPE_6__ {int storage; } ;
typedef TYPE_2__ spl_SplObjectStorage ;


 int * zend_hash_find_ptr (int *,scalar_t__) ;
 int * zend_hash_index_find_ptr (int *,int ) ;

__attribute__((used)) static spl_SplObjectStorageElement* spl_object_storage_get(spl_SplObjectStorage *intern, zend_hash_key *key)
{
 if (key->key) {
  return zend_hash_find_ptr(&intern->storage, key->key);
 } else {
  return zend_hash_index_find_ptr(&intern->storage, key->h);
 }
}
