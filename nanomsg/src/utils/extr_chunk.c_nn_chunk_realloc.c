
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int n; } ;
struct nn_chunk {size_t size; TYPE_1__ refcount; } ;


 int ENOMEM ;
 int NN_CHUNK_TAG ;
 int memcpy (void*,int ,size_t) ;
 int memmove (void*,void*,size_t) ;
 int nn_chunk_alloc (size_t,int ,void**) ;
 int nn_chunk_free (void*) ;
 int nn_chunk_getdata (struct nn_chunk*) ;
 struct nn_chunk* nn_chunk_getptr (void*) ;
 size_t nn_chunk_hdrsize () ;
 int nn_putl (int *,int ) ;
 scalar_t__ nn_slow (int) ;

int nn_chunk_realloc (size_t size, void **chunk)
{
    struct nn_chunk *self;
    void *new_ptr;
    size_t hdr_size;
    int rc;
    void *p = *chunk;

    self = nn_chunk_getptr (p);



    if (self->refcount.n == 1) {

         size_t grow;
         size_t empty;




        if (size <= self->size) {
            self->size = size;
            return (0);
        }

        hdr_size = nn_chunk_hdrsize ();
        empty = (uint8_t*) p - (uint8_t*) self - hdr_size;
        grow = size - self->size;


        if (hdr_size + size < size) {
            return -ENOMEM;
 }


        if (grow <= empty) {
            new_ptr = (uint8_t *)p - grow;
            memmove (new_ptr, p, self->size);
            self->size = size;



            empty = (uint8_t *)new_ptr - (uint8_t *)self - hdr_size;
            nn_putl ((uint8_t*) (((uint32_t*) new_ptr) - 1), NN_CHUNK_TAG);
            nn_putl ((uint8_t*) (((uint32_t*) new_ptr) - 2), (uint32_t) empty);
            *chunk = p;
            return (0);
        }
    }




    new_ptr = ((void*)0);
    rc = nn_chunk_alloc (size, 0, &new_ptr);

    if (nn_slow (rc != 0)) {
        return rc;
    }

    memcpy (new_ptr, nn_chunk_getdata (self), self->size);
    *chunk = new_ptr;
    nn_chunk_free (p);

    return 0;
}
