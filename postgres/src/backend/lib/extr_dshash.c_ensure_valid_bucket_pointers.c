
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size_log2; TYPE_1__* control; int area; int buckets; } ;
typedef TYPE_2__ dshash_table ;
struct TYPE_4__ {scalar_t__ size_log2; int buckets; } ;


 int dsa_get_address (int ,int ) ;

__attribute__((used)) static inline void
ensure_valid_bucket_pointers(dshash_table *hash_table)
{
 if (hash_table->size_log2 != hash_table->control->size_log2)
 {
  hash_table->buckets = dsa_get_address(hash_table->area,
             hash_table->control->buckets);
  hash_table->size_log2 = hash_table->control->size_log2;
 }
}
