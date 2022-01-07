
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nn_chunk {int (* ffn ) (struct nn_chunk*) ;int refcount; } ;


 int NN_CHUNK_TAG_DEALLOCATED ;
 int nn_atomic_dec (int *,int) ;
 int nn_atomic_term (int *) ;
 struct nn_chunk* nn_chunk_getptr (void*) ;
 int nn_putl (int *,int ) ;
 int stub1 (struct nn_chunk*) ;

void nn_chunk_free (void *p)
{
    struct nn_chunk *self;

    self = nn_chunk_getptr (p);



    if (nn_atomic_dec (&self->refcount, 1) <= 1) {


        nn_putl ((uint8_t*) (((uint32_t*) p) - 1), NN_CHUNK_TAG_DEALLOCATED);


        nn_atomic_term (&self->refcount);



        self->ffn (self);
    }
}
