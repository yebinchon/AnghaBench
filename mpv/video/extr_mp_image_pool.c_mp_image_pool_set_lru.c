
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {int use_lru; } ;



void mp_image_pool_set_lru(struct mp_image_pool *pool)
{
    pool->use_lru = 1;
}
