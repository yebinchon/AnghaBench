
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_image {struct image_flags* priv; } ;
struct image_flags {int referenced; int pool_alive; } ;


 int assert (int) ;
 int pool_lock () ;
 int pool_unlock () ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static void unref_image(void *opaque, uint8_t *data)
{
    struct mp_image *img = opaque;
    struct image_flags *it = img->priv;
    bool alive;
    pool_lock();
    assert(it->referenced);
    it->referenced = 0;
    alive = it->pool_alive;
    pool_unlock();
    if (!alive)
        talloc_free(img);
}
