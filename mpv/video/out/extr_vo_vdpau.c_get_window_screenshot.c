
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {scalar_t__ dwidth; scalar_t__ dheight; struct vdpctx* priv; } ;
struct vdpctx {int * output_surfaces; int num_output_surfaces; int surface_num; } ;
struct mp_image {scalar_t__ w; scalar_t__ h; } ;
typedef int VdpOutputSurface ;


 int WRAP_ADD (int ,int,int ) ;
 int mp_image_set_size (struct mp_image*,scalar_t__,scalar_t__) ;
 struct mp_image* read_output_surface (struct vo*,int ) ;

__attribute__((used)) static struct mp_image *get_window_screenshot(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;
    int last_surface = WRAP_ADD(vc->surface_num, -1, vc->num_output_surfaces);
    VdpOutputSurface screen = vc->output_surfaces[last_surface];
    struct mp_image *image = read_output_surface(vo, screen);
    if (image && image->w >= vo->dwidth && image->h >= vo->dheight)
        mp_image_set_size(image, vo->dwidth, vo->dheight);
    return image;
}
