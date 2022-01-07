
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_ulong ;
struct TYPE_3__ {int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 int * CG (int ) ;
 int ZEND_ACC_UNRESOLVED_VARIANCE ;
 int delayed_variance_obligations ;
 int variance_obligation_dtor ;
 int variance_obligation_ht_dtor ;
 int zend_hash_index_add_new_ptr (int *,scalar_t__,int *) ;
 int * zend_hash_index_find_ptr (int *,scalar_t__) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;

__attribute__((used)) static HashTable *get_or_init_obligations_for_class(zend_class_entry *ce) {
 HashTable *ht;
 zend_ulong key;
 if (!CG(delayed_variance_obligations)) {
  ALLOC_HASHTABLE(CG(delayed_variance_obligations));
  zend_hash_init(CG(delayed_variance_obligations), 0, ((void*)0), variance_obligation_ht_dtor, 0);
 }

 key = (zend_ulong) (uintptr_t) ce;
 ht = zend_hash_index_find_ptr(CG(delayed_variance_obligations), key);
 if (ht) {
  return ht;
 }

 ALLOC_HASHTABLE(ht);
 zend_hash_init(ht, 0, ((void*)0), variance_obligation_dtor, 0);
 zend_hash_index_add_new_ptr(CG(delayed_variance_obligations), key, ht);
 ce->ce_flags |= ZEND_ACC_UNRESOLVED_VARIANCE;
 return ht;
}
