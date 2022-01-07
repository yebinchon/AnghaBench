
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * vp_enum; int * video_proc; } ;
struct mp_filter {struct priv* priv; } ;


 int ID3D11VideoProcessorEnumerator_Release (int *) ;
 int ID3D11VideoProcessor_Release (int *) ;

__attribute__((used)) static void destroy_video_proc(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    if (p->video_proc)
        ID3D11VideoProcessor_Release(p->video_proc);
    p->video_proc = ((void*)0);

    if (p->vp_enum)
        ID3D11VideoProcessorEnumerator_Release(p->vp_enum);
    p->vp_enum = ((void*)0);
}
