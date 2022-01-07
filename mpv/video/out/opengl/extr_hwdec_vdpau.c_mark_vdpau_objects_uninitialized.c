
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {struct priv* priv; } ;
struct priv {int mapped; int vdp_surface; } ;


 int VDP_INVALID_HANDLE ;

__attribute__((used)) static void mark_vdpau_objects_uninitialized(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    p->vdp_surface = VDP_INVALID_HANDLE;
    p->mapped = 0;
}
