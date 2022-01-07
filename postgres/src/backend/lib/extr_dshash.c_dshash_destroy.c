
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int next; } ;
typedef TYPE_2__ dshash_table_item ;
struct TYPE_10__ {size_t size_log2; TYPE_1__* control; int area; int * buckets; } ;
typedef TYPE_3__ dshash_table ;
typedef int dsa_pointer ;
struct TYPE_8__ {scalar_t__ magic; int handle; int buckets; } ;


 int Assert (int) ;
 scalar_t__ DSHASH_MAGIC ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int dsa_free (int ,int ) ;
 TYPE_2__* dsa_get_address (int ,int ) ;
 int ensure_valid_bucket_pointers (TYPE_3__*) ;
 int pfree (TYPE_3__*) ;

void
dshash_destroy(dshash_table *hash_table)
{
 size_t size;
 size_t i;

 Assert(hash_table->control->magic == DSHASH_MAGIC);
 ensure_valid_bucket_pointers(hash_table);


 size = ((size_t) 1) << hash_table->size_log2;
 for (i = 0; i < size; ++i)
 {
  dsa_pointer item_pointer = hash_table->buckets[i];

  while (DsaPointerIsValid(item_pointer))
  {
   dshash_table_item *item;
   dsa_pointer next_item_pointer;

   item = dsa_get_address(hash_table->area, item_pointer);
   next_item_pointer = item->next;
   dsa_free(hash_table->area, item_pointer);
   item_pointer = next_item_pointer;
  }
 }





 hash_table->control->magic = 0;


 dsa_free(hash_table->area, hash_table->control->buckets);
 dsa_free(hash_table->area, hash_table->control->handle);

 pfree(hash_table);
}
