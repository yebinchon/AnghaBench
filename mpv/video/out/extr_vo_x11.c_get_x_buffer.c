
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int image_width; TYPE_2__** myximage; TYPE_1__* sws; } ;
struct mp_image {int* stride; int * planes; int member_0; } ;
struct TYPE_4__ {int bits_per_pixel; int data; } ;
struct TYPE_3__ {int dst; } ;


 int mp_image_set_params (struct mp_image*,int *) ;

__attribute__((used)) static struct mp_image get_x_buffer(struct priv *p, int buf_index)
{
    struct mp_image img = {0};
    mp_image_set_params(&img, &p->sws->dst);

    img.planes[0] = p->myximage[buf_index]->data;
    img.stride[0] =
        p->image_width * ((p->myximage[buf_index]->bits_per_pixel + 7) / 8);

    return img;
}
