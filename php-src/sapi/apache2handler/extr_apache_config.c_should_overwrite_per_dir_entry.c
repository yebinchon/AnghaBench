
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int key; } ;
typedef TYPE_1__ zend_hash_key ;
typedef int zend_bool ;
struct TYPE_7__ {scalar_t__ status; } ;
typedef TYPE_2__ php_dir_entry ;
typedef int HashTable ;


 int ZSTR_VAL (int ) ;
 TYPE_2__* Z_PTR_P (int *) ;
 int phpapdebug (int ) ;
 int stderr ;
 TYPE_2__* zend_hash_find_ptr (int *,int ) ;

__attribute__((used)) static zend_bool should_overwrite_per_dir_entry(HashTable *target_ht, zval *zv, zend_hash_key *hash_key, void *pData)
{
 php_dir_entry *new_per_dir_entry = Z_PTR_P(zv);
 php_dir_entry *orig_per_dir_entry;

 if ((orig_per_dir_entry = zend_hash_find_ptr(target_ht, hash_key->key)) == ((void*)0)) {
  return 1;
 }

 if (new_per_dir_entry->status >= orig_per_dir_entry->status) {

  phpapdebug((stderr, "ADDING/OVERWRITING %s (%d vs. %d)\n", ZSTR_VAL(hash_key->key), new_per_dir_entry->status, orig_per_dir_entry->status));
  return 1;
 } else {
  return 0;
 }
}
