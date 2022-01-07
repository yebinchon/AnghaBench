
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


 int Assert (int) ;
 TYPE_1__* dsa_get_address (int ,int ) ;

__attribute__((used)) static void
insert_item_into_bucket(dshash_table *hash_table,
      dsa_pointer item_pointer,
      dshash_table_item *item,
      dsa_pointer *bucket)
{
 Assert(item == dsa_get_address(hash_table->area, item_pointer));

 item->next = *bucket;
 *bucket = item_pointer;
}
