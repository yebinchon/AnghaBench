
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdp_functions {int (* output_surface_destroy ) (scalar_t__) ;} ;
struct ra_hwdec_mapper {int log; struct priv* priv; } ;
struct priv {scalar_t__ vdp_surface; int vdpgl_initialized; int mixer; int gl_textures; scalar_t__ vdpgl_surface; int mapped; TYPE_1__* ctx; TYPE_2__* gl; } ;
typedef int VdpStatus ;
struct TYPE_5__ {int (* VDPAUFiniNV ) () ;int (* DeleteTextures ) (int,int ) ;int (* VDPAUUnregisterSurfaceNV ) (scalar_t__) ;} ;
struct TYPE_4__ {struct vdp_functions vdp; } ;
typedef TYPE_2__ GL ;


 int CHECK_VDP_WARNING (struct ra_hwdec_mapper*,char*) ;
 scalar_t__ VDP_INVALID_HANDLE ;
 int assert (int) ;
 int gl_check_error (TYPE_2__*,int ,char*) ;
 int mp_vdpau_mixer_destroy (int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (int,int ) ;
 int stub3 (scalar_t__) ;
 int stub4 () ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = p->gl;
    struct vdp_functions *vdp = &p->ctx->vdp;
    VdpStatus vdp_st;

    assert(!p->mapped);

    if (p->vdpgl_surface)
        gl->VDPAUUnregisterSurfaceNV(p->vdpgl_surface);
    p->vdpgl_surface = 0;

    gl->DeleteTextures(4, p->gl_textures);

    if (p->vdp_surface != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(p->vdp_surface);
        CHECK_VDP_WARNING(mapper, "Error when calling vdp_output_surface_destroy");
    }
    p->vdp_surface = VDP_INVALID_HANDLE;

    gl_check_error(gl, mapper->log, "Before uninitializing OpenGL interop");

    if (p->vdpgl_initialized)
        gl->VDPAUFiniNV();

    p->vdpgl_initialized = 0;

    gl_check_error(gl, mapper->log, "After uninitializing OpenGL interop");

    mp_vdpau_mixer_destroy(p->mixer);
}
