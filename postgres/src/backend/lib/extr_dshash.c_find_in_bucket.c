
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int next; } ;
typedef TYPE_1__ dshash_table_item ;
struct TYPE_9__ {int area; } ;
typedef TYPE_2__ dshash_table ;
typedef int dsa_pointer ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int ENTRY_FROM_ITEM (TYPE_1__*) ;
 TYPE_1__* dsa_get_address (int ,int ) ;
 scalar_t__ equal_keys (TYPE_2__*,void const*,int ) ;

__attribute__((used)) static inline dshash_table_item *
find_in_bucket(dshash_table *hash_table, const void *key,
      dsa_pointer item_pointer)
{
 while (DsaPointerIsValid(item_pointer))
 {
  dshash_table_item *item;

  item = dsa_get_address(hash_table->area, item_pointer);
  if (equal_keys(hash_table, key, ENTRY_FROM_ITEM(item)))
   return item;
  item_pointer = item->next;
 }
 return ((void*)0);
}
