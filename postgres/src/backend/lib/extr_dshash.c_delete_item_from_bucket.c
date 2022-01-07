
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int next; } ;
typedef TYPE_1__ dshash_table_item ;
struct TYPE_7__ {int area; } ;
typedef TYPE_2__ dshash_table ;
typedef int dsa_pointer ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int dsa_free (int ,int ) ;
 TYPE_1__* dsa_get_address (int ,int ) ;

__attribute__((used)) static bool
delete_item_from_bucket(dshash_table *hash_table,
      dshash_table_item *item,
      dsa_pointer *bucket_head)
{
 while (DsaPointerIsValid(*bucket_head))
 {
  dshash_table_item *bucket_item;

  bucket_item = dsa_get_address(hash_table->area, *bucket_head);

  if (bucket_item == item)
  {
   dsa_pointer next;

   next = item->next;
   dsa_free(hash_table->area, *bucket_head);
   *bucket_head = next;
   return 1;
  }
  bucket_head = &bucket_item->next;
 }
 return 0;
}
