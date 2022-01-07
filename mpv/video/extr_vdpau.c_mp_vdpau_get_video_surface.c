
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_ctx {int dummy; } ;
struct mp_image {int dummy; } ;
typedef int VdpChromaType ;


 struct mp_image* mp_vdpau_get_surface (struct mp_vdpau_ctx*,int ,int ,int,int,int) ;

struct mp_image *mp_vdpau_get_video_surface(struct mp_vdpau_ctx *ctx,
                                            VdpChromaType chroma, int w, int h)
{
    return mp_vdpau_get_surface(ctx, chroma, 0, 0, w, h);
}
