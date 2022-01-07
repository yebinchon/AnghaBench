
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int dheight; int dwidth; struct priv* priv; } ;
struct TYPE_2__ {int sdl; int mpv; } ;
struct priv {TYPE_1__ osd_format; int renderer; } ;
struct mp_image {int * stride; int * planes; } ;


 int MP_ERR (struct vo*,char*) ;
 scalar_t__ SDL_RenderReadPixels (int ,int *,int ,int ,int ) ;
 struct mp_image* mp_image_alloc (int ,int ,int ) ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static struct mp_image *get_window_screenshot(struct vo *vo)
{
    struct priv *vc = vo->priv;
    struct mp_image *image = mp_image_alloc(vc->osd_format.mpv, vo->dwidth,
                                                                vo->dheight);
    if (!image)
        return ((void*)0);
    if (SDL_RenderReadPixels(vc->renderer, ((void*)0), vc->osd_format.sdl,
                             image->planes[0], image->stride[0])) {
        MP_ERR(vo, "SDL_RenderReadPixels failed\n");
        talloc_free(image);
        return ((void*)0);
    }
    return image;
}
