
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_list {int dummy; } ;
struct nn_hash {int slots; int * array; scalar_t__ items; } ;


 int NN_HASH_INITIAL_SLOTS ;
 int alloc_assert (int *) ;
 int * nn_alloc (int,char*) ;
 int nn_list_init (int *) ;

void nn_hash_init (struct nn_hash *self)
{
    uint32_t i;

    self->slots = NN_HASH_INITIAL_SLOTS;
    self->items = 0;
    self->array = nn_alloc (sizeof (struct nn_list) * NN_HASH_INITIAL_SLOTS,
        "hash map");
    alloc_assert (self->array);
    for (i = 0; i != NN_HASH_INITIAL_SLOTS; ++i)
        nn_list_init (&self->array [i]);
}
