
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {int dummy; } ;
struct mp_image {int h; int w; int imgfmt; } ;


 int mp_image_copy (struct mp_image*,struct mp_image*) ;
 int mp_image_copy_attributes (struct mp_image*,struct mp_image*) ;
 struct mp_image* mp_image_pool_get (struct mp_image_pool*,int ,int ,int ) ;

struct mp_image *mp_image_pool_new_copy(struct mp_image_pool *pool,
                                        struct mp_image *img)
{
    struct mp_image *new = mp_image_pool_get(pool, img->imgfmt, img->w, img->h);
    if (new) {
        mp_image_copy(new, img);
        mp_image_copy_attributes(new, img);
    }
    return new;
}
