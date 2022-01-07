
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * planes; } ;
struct buffer {int size; TYPE_1__ mpi; int pool; int buffer; } ;


 int munmap (int ,int ) ;
 int wl_buffer_destroy (int ) ;
 int wl_shm_pool_destroy (int ) ;

__attribute__((used)) static void buffer_destroy(void *p)
{
    struct buffer *buf = p;
    wl_buffer_destroy(buf->buffer);
    wl_shm_pool_destroy(buf->pool);
    munmap(buf->mpi.planes[0], buf->size);
}
