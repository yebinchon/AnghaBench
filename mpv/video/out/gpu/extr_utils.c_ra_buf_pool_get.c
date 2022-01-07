
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_buf_params {int initial_data; } ;
struct ra_buf_pool {size_t index; size_t num_buffers; struct ra_buf** buffers; struct ra_buf_params current_params; } ;
struct ra_buf {int dummy; } ;
struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {int (* buf_poll ) (struct ra*,struct ra_buf*) ;} ;


 int assert (int) ;
 int ra_buf_params_compatible (struct ra_buf_params const*,struct ra_buf_params*) ;
 int ra_buf_pool_grow (struct ra*,struct ra_buf_pool*) ;
 int ra_buf_pool_uninit (struct ra*,struct ra_buf_pool*) ;
 int stub1 (struct ra*,struct ra_buf*) ;

struct ra_buf *ra_buf_pool_get(struct ra *ra, struct ra_buf_pool *pool,
                               const struct ra_buf_params *params)
{
    assert(!params->initial_data);

    if (!ra_buf_params_compatible(params, &pool->current_params)) {
        ra_buf_pool_uninit(ra, pool);
        pool->current_params = *params;
    }


    if (!pool->buffers && !ra_buf_pool_grow(ra, pool))
        return ((void*)0);


    if (!ra->fns->buf_poll(ra, pool->buffers[pool->index]) &&
        !ra_buf_pool_grow(ra, pool))
    {
        return ((void*)0);
    }

    struct ra_buf *buf = pool->buffers[pool->index++];
    pool->index %= pool->num_buffers;

    return buf;
}
