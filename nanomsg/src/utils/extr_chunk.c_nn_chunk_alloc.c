
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nn_chunk {size_t size; int ffn; int refcount; } ;


 int EINVAL ;
 int ENOMEM ;
 int NN_CHUNK_TAG ;
 struct nn_chunk* nn_alloc (size_t,char*) ;
 int nn_atomic_init (int *,int) ;
 int nn_chunk_default_free ;
 void* nn_chunk_getdata (struct nn_chunk*) ;
 size_t nn_chunk_hdrsize () ;
 int nn_putl (int *,int ) ;
 scalar_t__ nn_slow (int) ;

int nn_chunk_alloc (size_t size, int type, void **result)
{
    size_t sz;
    struct nn_chunk *self;
    const size_t hdrsz = nn_chunk_hdrsize ();


    sz = hdrsz + size;
    if (nn_slow (sz < hdrsz))
        return -ENOMEM;


    switch (type) {
    case 0:
        self = nn_alloc (sz, "message chunk");
        break;
    default:
        return -EINVAL;
    }
    if (nn_slow (!self))
        return -ENOMEM;


    nn_atomic_init (&self->refcount, 1);
    self->size = size;
    self->ffn = nn_chunk_default_free;



    nn_putl ((uint8_t*) ((uint32_t*) (self + 1)), 0);


    nn_putl ((uint8_t*) ((((uint32_t*) (self + 1))) + 1), NN_CHUNK_TAG);

    *result = nn_chunk_getdata (self);
    return 0;
}
