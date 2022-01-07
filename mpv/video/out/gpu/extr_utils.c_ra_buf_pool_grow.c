
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ra_buf_pool {int num_buffers; TYPE_1__ current_params; int index; int buffers; } ;
struct ra_buf {int dummy; } ;
struct ra {int dummy; } ;


 int MP_TARRAY_INSERT_AT (int *,int ,int ,int ,struct ra_buf*) ;
 int MP_VERBOSE (struct ra*,char*,int ,int ) ;
 struct ra_buf* ra_buf_create (struct ra*,TYPE_1__*) ;

__attribute__((used)) static bool ra_buf_pool_grow(struct ra *ra, struct ra_buf_pool *pool)
{
    struct ra_buf *buf = ra_buf_create(ra, &pool->current_params);
    if (!buf)
        return 0;

    MP_TARRAY_INSERT_AT(((void*)0), pool->buffers, pool->num_buffers, pool->index, buf);
    MP_VERBOSE(ra, "Resized buffer pool of type %u to size %d\n",
               pool->current_params.type, pool->num_buffers);
    return 1;
}
