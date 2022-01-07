
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {void* allocator_ctx; int allocator; } ;
typedef int mp_image_allocator ;



void mp_image_pool_set_allocator(struct mp_image_pool *pool,
                                 mp_image_allocator cb, void *cb_data)
{
    pool->allocator = cb;
    pool->allocator_ctx = cb_data;
}
