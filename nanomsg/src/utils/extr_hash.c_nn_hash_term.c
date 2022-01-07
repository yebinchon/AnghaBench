
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nn_hash {size_t slots; int * array; } ;


 int nn_free (int *) ;
 int nn_list_term (int *) ;

void nn_hash_term (struct nn_hash *self)
{
    uint32_t i;

    for (i = 0; i != self->slots; ++i)
        nn_list_term (&self->array [i]);
    nn_free (self->array);
}
