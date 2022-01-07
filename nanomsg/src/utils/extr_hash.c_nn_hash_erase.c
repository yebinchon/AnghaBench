
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nn_hash_item {int list; int key; } ;
struct nn_hash {size_t slots; int items; int * array; } ;


 size_t nn_hash_key (int ) ;
 int nn_list_erase (int *,int *) ;

void nn_hash_erase (struct nn_hash *self, struct nn_hash_item *item)
{
    uint32_t slot;

    slot = nn_hash_key (item->key) % self->slots;
    nn_list_erase (&self->array [slot], &item->list);
 --self->items;
}
