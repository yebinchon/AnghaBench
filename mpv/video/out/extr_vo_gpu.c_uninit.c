
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {scalar_t__ hwdec_devs; struct gpu_priv* priv; } ;
struct gpu_priv {int ctx; int renderer; } ;


 int gl_video_uninit (int ) ;
 int hwdec_devices_destroy (scalar_t__) ;
 int hwdec_devices_set_loader (scalar_t__,int *,int *) ;
 int ra_ctx_destroy (int *) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;

    gl_video_uninit(p->renderer);
    if (vo->hwdec_devs) {
        hwdec_devices_set_loader(vo->hwdec_devs, ((void*)0), ((void*)0));
        hwdec_devices_destroy(vo->hwdec_devs);
    }
    ra_ctx_destroy(&p->ctx);
}
