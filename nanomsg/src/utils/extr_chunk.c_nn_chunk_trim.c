
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nn_chunk {size_t size; } ;


 int NN_CHUNK_TAG ;
 size_t UINT32_MAX ;
 int nn_assert (int) ;
 struct nn_chunk* nn_chunk_getptr (void*) ;
 int nn_putl (int *,int ) ;

void *nn_chunk_trim (void *p, size_t n)
{
    struct nn_chunk *self;
    const size_t hdrsz = sizeof (struct nn_chunk) + 2 * sizeof (uint32_t);
    size_t empty_space;

    self = nn_chunk_getptr (p);


    nn_assert (n <= self->size);


    p = ((uint8_t*) p) + n;
    nn_putl ((uint8_t*) (((uint32_t*) p) - 1), NN_CHUNK_TAG);
    empty_space = (uint8_t*) p - (uint8_t*) self - hdrsz;
    nn_assert(empty_space < UINT32_MAX);
    nn_putl ((uint8_t*) (((uint32_t*) p) - 2), (uint32_t) empty_space);


    self->size -= n;

    return p;
}
