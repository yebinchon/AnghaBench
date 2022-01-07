
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hash; int next; } ;
typedef TYPE_2__ dshash_table_item ;
struct TYPE_10__ {int area; int * buckets; TYPE_1__* control; } ;
typedef TYPE_3__ dshash_table ;
typedef int dsa_pointer ;
struct TYPE_8__ {size_t size_log2; int buckets; } ;


 int Assert (int) ;
 size_t BUCKET_INDEX_FOR_HASH_AND_SIZE (int ,size_t) ;
 size_t DSHASH_NUM_PARTITIONS ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PARTITION_LOCK (TYPE_3__*,size_t) ;
 int dsa_allocate0 (int ,int) ;
 int dsa_free (int ,int ) ;
 void* dsa_get_address (int ,int ) ;
 int insert_item_into_bucket (TYPE_3__*,int ,TYPE_2__*,int *) ;

__attribute__((used)) static void
resize(dshash_table *hash_table, size_t new_size_log2)
{
 dsa_pointer old_buckets;
 dsa_pointer new_buckets_shared;
 dsa_pointer *new_buckets;
 size_t size;
 size_t new_size = ((size_t) 1) << new_size_log2;
 size_t i;





 for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
 {
  Assert(!LWLockHeldByMe(PARTITION_LOCK(hash_table, i)));

  LWLockAcquire(PARTITION_LOCK(hash_table, i), LW_EXCLUSIVE);
  if (i == 0 && hash_table->control->size_log2 >= new_size_log2)
  {




   LWLockRelease(PARTITION_LOCK(hash_table, 0));
   return;
  }
 }

 Assert(new_size_log2 == hash_table->control->size_log2 + 1);


 new_buckets_shared = dsa_allocate0(hash_table->area,
            sizeof(dsa_pointer) * new_size);
 new_buckets = dsa_get_address(hash_table->area, new_buckets_shared);





 size = ((size_t) 1) << hash_table->control->size_log2;
 for (i = 0; i < size; ++i)
 {
  dsa_pointer item_pointer = hash_table->buckets[i];

  while (DsaPointerIsValid(item_pointer))
  {
   dshash_table_item *item;
   dsa_pointer next_item_pointer;

   item = dsa_get_address(hash_table->area, item_pointer);
   next_item_pointer = item->next;
   insert_item_into_bucket(hash_table, item_pointer, item,
         &new_buckets[BUCKET_INDEX_FOR_HASH_AND_SIZE(item->hash,
                    new_size_log2)]);
   item_pointer = next_item_pointer;
  }
 }


 old_buckets = hash_table->control->buckets;
 hash_table->control->buckets = new_buckets_shared;
 hash_table->control->size_log2 = new_size_log2;
 hash_table->buckets = new_buckets;
 dsa_free(hash_table->area, old_buckets);


 for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
  LWLockRelease(PARTITION_LOCK(hash_table, i));
}
