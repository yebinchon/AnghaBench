
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int hash; } ;
typedef TYPE_2__ dshash_table_item ;
struct TYPE_11__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; } ;
typedef TYPE_3__ dshash_table ;
struct TYPE_9__ {scalar_t__ magic; } ;


 int Assert (int) ;
 scalar_t__ DSHASH_MAGIC ;
 TYPE_2__* ITEM_FROM_ENTRY (void*) ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 size_t PARTITION_FOR_HASH (int ) ;
 int PARTITION_LOCK (TYPE_3__*,size_t) ;
 int delete_item (TYPE_3__*,TYPE_2__*) ;

void
dshash_delete_entry(dshash_table *hash_table, void *entry)
{
 dshash_table_item *item = ITEM_FROM_ENTRY(entry);
 size_t partition = PARTITION_FOR_HASH(item->hash);

 Assert(hash_table->control->magic == DSHASH_MAGIC);
 Assert(hash_table->find_locked);
 Assert(hash_table->find_exclusively_locked);
 Assert(LWLockHeldByMeInMode(PARTITION_LOCK(hash_table, partition),
        LW_EXCLUSIVE));

 delete_item(hash_table, item);
 hash_table->find_locked = 0;
 hash_table->find_exclusively_locked = 0;
 LWLockRelease(PARTITION_LOCK(hash_table, partition));
}
