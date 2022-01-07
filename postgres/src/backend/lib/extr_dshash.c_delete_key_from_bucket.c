
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int next; } ;
typedef TYPE_1__ dshash_table_item ;
struct TYPE_8__ {int area; } ;
typedef TYPE_2__ dshash_table ;
typedef int dsa_pointer ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int ENTRY_FROM_ITEM (TYPE_1__*) ;
 int dsa_free (int ,int ) ;
 TYPE_1__* dsa_get_address (int ,int ) ;
 scalar_t__ equal_keys (TYPE_2__*,void const*,int ) ;

__attribute__((used)) static bool
delete_key_from_bucket(dshash_table *hash_table,
        const void *key,
        dsa_pointer *bucket_head)
{
 while (DsaPointerIsValid(*bucket_head))
 {
  dshash_table_item *item;

  item = dsa_get_address(hash_table->area, *bucket_head);

  if (equal_keys(hash_table, key, ENTRY_FROM_ITEM(item)))
  {
   dsa_pointer next;

   next = item->next;
   dsa_free(hash_table->area, *bucket_head);
   *bucket_head = next;

   return 1;
  }
  bucket_head = &item->next;
 }
 return 0;
}
