
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key; } ;
typedef TYPE_1__ zend_hash_key ;
typedef int spl_SplObjectStorage ;


 int zend_string_release_ex (scalar_t__,int ) ;

__attribute__((used)) static void spl_object_storage_free_hash(spl_SplObjectStorage *intern, zend_hash_key *key) {
 if (key->key) {
  zend_string_release_ex(key->key, 0);
 }
}
