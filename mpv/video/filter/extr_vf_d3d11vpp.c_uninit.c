
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ vo_dev; scalar_t__ device_ctx; scalar_t__ video_dev; scalar_t__ video_ctx; int pool; int queue; } ;
struct mp_filter {struct priv* priv; } ;


 int ID3D11DeviceContext_Release (scalar_t__) ;
 int ID3D11Device_Release (scalar_t__) ;
 int ID3D11VideoContext_Release (scalar_t__) ;
 int ID3D11VideoDevice_Release (scalar_t__) ;
 int destroy_video_proc (struct mp_filter*) ;
 int flush_frames (struct mp_filter*) ;
 int talloc_free (int ) ;

__attribute__((used)) static void uninit(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    destroy_video_proc(vf);

    flush_frames(vf);
    talloc_free(p->queue);
    talloc_free(p->pool);

    if (p->video_ctx)
        ID3D11VideoContext_Release(p->video_ctx);

    if (p->video_dev)
        ID3D11VideoDevice_Release(p->video_dev);

    if (p->device_ctx)
        ID3D11DeviceContext_Release(p->device_ctx);

    if (p->vo_dev)
        ID3D11Device_Release(p->vo_dev);
}
