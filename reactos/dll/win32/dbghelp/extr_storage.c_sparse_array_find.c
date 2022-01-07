
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse_array {int elements; } ;
struct key2index {unsigned long key; int index; } ;


 struct key2index* sparse_array_lookup (struct sparse_array const*,unsigned long,unsigned int*) ;
 void* vector_at (int *,int ) ;

void* sparse_array_find(const struct sparse_array* sa, unsigned long key)
{
    unsigned idx;
    struct key2index* pk2i;

    if ((pk2i = sparse_array_lookup(sa, key, &idx)) && pk2i->key == key)
        return vector_at(&sa->elements, pk2i->index);
    return ((void*)0);
}
