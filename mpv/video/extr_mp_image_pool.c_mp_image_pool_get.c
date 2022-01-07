
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {int fmt; int w; int h; int allocator_ctx; struct mp_image* (* allocator ) (int ,int,int,int) ;} ;
struct mp_image {int dummy; } ;


 struct mp_image* mp_image_alloc (int,int,int) ;
 int mp_image_pool_add (struct mp_image_pool*,struct mp_image*) ;
 int mp_image_pool_clear (struct mp_image_pool*) ;
 struct mp_image* mp_image_pool_get_no_alloc (struct mp_image_pool*,int,int,int) ;
 struct mp_image* stub1 (int ,int,int,int) ;

struct mp_image *mp_image_pool_get(struct mp_image_pool *pool, int fmt,
                                   int w, int h)
{
    if (!pool)
        return mp_image_alloc(fmt, w, h);
    struct mp_image *new = mp_image_pool_get_no_alloc(pool, fmt, w, h);
    if (!new) {
        if (fmt != pool->fmt || w != pool->w || h != pool->h)
            mp_image_pool_clear(pool);
        pool->fmt = fmt;
        pool->w = w;
        pool->h = h;
        if (pool->allocator) {
            new = pool->allocator(pool->allocator_ctx, fmt, w, h);
        } else {
            new = mp_image_alloc(fmt, w, h);
        }
        if (!new)
            return ((void*)0);
        mp_image_pool_add(pool, new);
        new = mp_image_pool_get_no_alloc(pool, fmt, w, h);
    }
    return new;
}
