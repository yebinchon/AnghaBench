
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dshash_table_item ;
struct TYPE_5__ {int key_size; scalar_t__ entry_size; } ;
struct TYPE_6__ {TYPE_1__ params; int area; } ;
typedef TYPE_2__ dshash_table ;
typedef int dsa_pointer ;


 int ENTRY_FROM_ITEM (int *) ;
 scalar_t__ MAXALIGN (int) ;
 int dsa_allocate (int ,scalar_t__) ;
 int * dsa_get_address (int ,int ) ;
 int insert_item_into_bucket (TYPE_2__*,int ,int *,int *) ;
 int memcpy (int ,void const*,int ) ;

__attribute__((used)) static dshash_table_item *
insert_into_bucket(dshash_table *hash_table,
       const void *key,
       dsa_pointer *bucket)
{
 dsa_pointer item_pointer;
 dshash_table_item *item;

 item_pointer = dsa_allocate(hash_table->area,
        hash_table->params.entry_size +
        MAXALIGN(sizeof(dshash_table_item)));
 item = dsa_get_address(hash_table->area, item_pointer);
 memcpy(ENTRY_FROM_ITEM(item), key, hash_table->params.key_size);
 insert_item_into_bucket(hash_table, item_pointer, item, bucket);
 return item;
}
