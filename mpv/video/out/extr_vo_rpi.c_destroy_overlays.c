
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct TYPE_2__ {int ra; } ;
struct priv {scalar_t__ osd_overlay; int update; TYPE_1__ egl; int * gl_video; scalar_t__ window; } ;


 int gl_video_uninit (int *) ;
 int mp_egl_rpi_destroy (TYPE_1__*) ;
 int ra_free (int *) ;
 int vc_dispmanx_element_remove (int ,scalar_t__) ;

__attribute__((used)) static void destroy_overlays(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (p->window)
        vc_dispmanx_element_remove(p->update, p->window);
    p->window = 0;

    gl_video_uninit(p->gl_video);
    p->gl_video = ((void*)0);
    ra_free(&p->egl.ra);
    mp_egl_rpi_destroy(&p->egl);

    if (p->osd_overlay)
        vc_dispmanx_element_remove(p->update, p->osd_overlay);
    p->osd_overlay = 0;
}
