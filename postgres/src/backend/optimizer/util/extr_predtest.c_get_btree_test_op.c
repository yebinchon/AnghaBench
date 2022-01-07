
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int implic_test_op; int refute_test_op; } ;
typedef TYPE_1__ OprProofCacheEntry ;
typedef int Oid ;


 TYPE_1__* lookup_proof_cache (int ,int ,int) ;

__attribute__((used)) static Oid
get_btree_test_op(Oid pred_op, Oid clause_op, bool refute_it)
{
 OprProofCacheEntry *cache_entry;

 cache_entry = lookup_proof_cache(pred_op, clause_op, refute_it);
 if (refute_it)
  return cache_entry->refute_test_op;
 else
  return cache_entry->implic_test_op;
}
