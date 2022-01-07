
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_params {int h; int w; int imgfmt; } ;
struct mp_image {struct mp_image_params params; } ;


 int mp_image_set_size (struct mp_image*,int ,int ) ;
 int mp_image_setfmt (struct mp_image*,int ) ;

void mp_image_set_params(struct mp_image *image,
                         const struct mp_image_params *params)
{

    mp_image_setfmt(image, params->imgfmt);
    mp_image_set_size(image, params->w, params->h);
    image->params = *params;
}
