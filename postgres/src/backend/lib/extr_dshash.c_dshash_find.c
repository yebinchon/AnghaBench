
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dshash_table_item ;
struct TYPE_10__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; } ;
typedef TYPE_2__ dshash_table ;
typedef int dshash_hash ;
struct TYPE_9__ {scalar_t__ magic; } ;


 int Assert (int) ;
 int BUCKET_FOR_HASH (TYPE_2__*,int ) ;
 scalar_t__ DSHASH_MAGIC ;
 void* ENTRY_FROM_ITEM (int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 size_t PARTITION_FOR_HASH (int ) ;
 int PARTITION_LOCK (TYPE_2__*,size_t) ;
 int ensure_valid_bucket_pointers (TYPE_2__*) ;
 int * find_in_bucket (TYPE_2__*,void const*,int ) ;
 int hash_key (TYPE_2__*,void const*) ;

void *
dshash_find(dshash_table *hash_table, const void *key, bool exclusive)
{
 dshash_hash hash;
 size_t partition;
 dshash_table_item *item;

 hash = hash_key(hash_table, key);
 partition = PARTITION_FOR_HASH(hash);

 Assert(hash_table->control->magic == DSHASH_MAGIC);
 Assert(!hash_table->find_locked);

 LWLockAcquire(PARTITION_LOCK(hash_table, partition),
      exclusive ? LW_EXCLUSIVE : LW_SHARED);
 ensure_valid_bucket_pointers(hash_table);


 item = find_in_bucket(hash_table, key, BUCKET_FOR_HASH(hash_table, hash));

 if (!item)
 {

  LWLockRelease(PARTITION_LOCK(hash_table, partition));
  return ((void*)0);
 }
 else
 {

  hash_table->find_locked = 1;
  hash_table->find_exclusively_locked = exclusive;
  return ENTRY_FROM_ITEM(item);
 }
}
