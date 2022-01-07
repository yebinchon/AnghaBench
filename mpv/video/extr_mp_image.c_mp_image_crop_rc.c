
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int y1; int x1; int y0; int x0; } ;
struct mp_image {int dummy; } ;


 int mp_image_crop (struct mp_image*,int ,int ,int ,int ) ;

void mp_image_crop_rc(struct mp_image *img, struct mp_rect rc)
{
    mp_image_crop(img, rc.x0, rc.y0, rc.x1, rc.y1);
}
