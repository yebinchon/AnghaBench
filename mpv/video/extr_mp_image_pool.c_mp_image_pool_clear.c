
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {int num_images; struct mp_image** images; } ;
struct mp_image {struct image_flags* priv; } ;
struct image_flags {int pool_alive; int referenced; } ;


 int assert (int) ;
 int pool_lock () ;
 int pool_unlock () ;
 int talloc_free (struct mp_image*) ;

void mp_image_pool_clear(struct mp_image_pool *pool)
{
    for (int n = 0; n < pool->num_images; n++) {
        struct mp_image *img = pool->images[n];
        struct image_flags *it = img->priv;
        bool referenced;
        pool_lock();
        assert(it->pool_alive);
        it->pool_alive = 0;
        referenced = it->referenced;
        pool_unlock();
        if (!referenced)
            talloc_free(img);
    }
    pool->num_images = 0;
}
