
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct priv {int mapped; scalar_t__ vdpgl_surface; scalar_t__ direct_mode; TYPE_1__* gl; } ;
struct TYPE_2__ {int (* VDPAUUnregisterSurfaceNV ) (scalar_t__) ;int (* VDPAUUnmapSurfacesNV ) (int,scalar_t__*) ;} ;
typedef TYPE_1__ GL ;


 int ra_tex_free (int ,int *) ;
 int stub1 (int,scalar_t__*) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static void mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = p->gl;

    for (int n = 0; n < 4; n++)
        ra_tex_free(mapper->ra, &mapper->tex[n]);

    if (p->mapped) {
        gl->VDPAUUnmapSurfacesNV(1, &p->vdpgl_surface);
        if (p->direct_mode) {
            gl->VDPAUUnregisterSurfaceNV(p->vdpgl_surface);
            p->vdpgl_surface = 0;
        }
    }
    p->mapped = 0;
}
