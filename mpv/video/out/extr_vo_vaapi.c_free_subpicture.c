
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ image_id; } ;
struct vaapi_osd_image {scalar_t__ subpic_id; TYPE_1__ image; } ;
struct priv {int display; } ;


 scalar_t__ VA_INVALID_ID ;
 int vaDestroyImage (int ,scalar_t__) ;
 int vaDestroySubpicture (int ,scalar_t__) ;

__attribute__((used)) static void free_subpicture(struct priv *p, struct vaapi_osd_image *img)
{
    if (img->image.image_id != VA_INVALID_ID)
        vaDestroyImage(p->display, img->image.image_id);
    if (img->subpic_id != VA_INVALID_ID)
        vaDestroySubpicture(p->display, img->subpic_id);
    img->image.image_id = VA_INVALID_ID;
    img->subpic_id = VA_INVALID_ID;
}
