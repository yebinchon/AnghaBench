
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_elts; } ;
struct sparse_array {int key2index; TYPE_1__ elements; } ;
struct key2index {unsigned long key; } ;


 struct key2index* vector_at (int *,unsigned int) ;

__attribute__((used)) static struct key2index* sparse_array_lookup(const struct sparse_array* sa,
                                             unsigned long key, unsigned* idx)
{
    struct key2index* pk2i;
    unsigned low, high;

    if (!sa->elements.num_elts)
    {
        *idx = 0;
        return ((void*)0);
    }
    high = sa->elements.num_elts;
    pk2i = vector_at(&sa->key2index, high - 1);
    if (pk2i->key < key)
    {
        *idx = high;
        return ((void*)0);
    }
    if (pk2i->key == key)
    {
        *idx = high - 1;
        return pk2i;
    }
    low = 0;
    pk2i = vector_at(&sa->key2index, low);
    if (pk2i->key >= key)
    {
        *idx = 0;
        return pk2i;
    }

    while (low < high)
    {
        *idx = (low + high) / 2;
        pk2i = vector_at(&sa->key2index, *idx);
        if (pk2i->key > key) high = *idx;
        else if (pk2i->key < key) low = *idx + 1;
        else return pk2i;
    }



    if (pk2i->key < key)
        pk2i = vector_at(&sa->key2index, ++(*idx));
    return pk2i;
}
