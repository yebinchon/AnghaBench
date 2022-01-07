
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {scalar_t__ display; } ;


 int destroy_overlays (struct vo*) ;
 int disable_renderer (struct vo*) ;
 int vc_dispmanx_display_close (scalar_t__) ;
 int vc_dispmanx_vsync_callback (scalar_t__,int *,int *) ;

__attribute__((used)) static void destroy_dispmanx(struct vo *vo)
{
    struct priv *p = vo->priv;

    disable_renderer(vo);
    destroy_overlays(vo);

    if (p->display) {
        vc_dispmanx_vsync_callback(p->display, ((void*)0), ((void*)0));
        vc_dispmanx_display_close(p->display);
    }
    p->display = 0;
}
