
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_3__ {int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int HashTable ;


 int * CG (int ) ;
 int ZEND_ACC_LINKED ;
 int ZEND_ACC_UNRESOLVED_VARIANCE ;
 int ZEND_ASSERT (int ) ;
 int check_variance_obligation ;
 int delayed_variance_obligations ;
 int zend_hash_apply (int *,int ) ;
 int zend_hash_index_del (int *,int ) ;
 int * zend_hash_index_find_ptr (int *,int ) ;
 scalar_t__ zend_hash_num_elements (int *) ;

__attribute__((used)) static void resolve_delayed_variance_obligations(zend_class_entry *ce) {
 HashTable *all_obligations = CG(delayed_variance_obligations), *obligations;
 zend_ulong num_key = (zend_ulong) (uintptr_t) ce;

 ZEND_ASSERT(all_obligations != ((void*)0));
 obligations = zend_hash_index_find_ptr(all_obligations, num_key);
 ZEND_ASSERT(obligations != ((void*)0));

 zend_hash_apply(obligations, check_variance_obligation);
 if (zend_hash_num_elements(obligations) == 0) {
  ce->ce_flags &= ~ZEND_ACC_UNRESOLVED_VARIANCE;
  ce->ce_flags |= ZEND_ACC_LINKED;
  zend_hash_index_del(all_obligations, num_key);
 }
}
