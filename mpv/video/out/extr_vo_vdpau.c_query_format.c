
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct vdpctx* priv; } ;
struct vdpctx {int force_yuv; } ;


 scalar_t__ mp_vdpau_get_format (int,int *,int *) ;
 scalar_t__ mp_vdpau_get_rgb_format (int,int *) ;

__attribute__((used)) static int query_format(struct vo *vo, int format)
{
    struct vdpctx *vc = vo->priv;

    if (mp_vdpau_get_format(format, ((void*)0), ((void*)0)))
        return 1;
    if (!vc->force_yuv && mp_vdpau_get_rgb_format(format, ((void*)0)))
        return 1;
    return 0;
}
