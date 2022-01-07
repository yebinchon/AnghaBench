
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct vdp_functions {int (* video_surface_get_parameters ) (intptr_t,int *,int*,int*) ;} ;
struct ra_tex_params {int dimensions; int w; int h; int d; int render_src; int src_linear; int format; } ;
struct TYPE_7__ {int w; int h; } ;
struct ra_hwdec_mapper {void** tex; int ra; TYPE_2__ src_params; TYPE_4__* src; struct priv* priv; } ;
struct TYPE_6__ {int chroma_w; int chroma_h; } ;
struct priv {int mapped; int * gl_textures; int vdpgl_surface; int vdp_surface; int mixer; TYPE_1__ direct_desc; scalar_t__ direct_mode; int preemption_counter; TYPE_5__* ctx; TYPE_3__* gl; } ;
typedef intptr_t VdpVideoSurface ;
typedef int VdpStatus ;
typedef int VdpChromaType ;
struct TYPE_10__ {struct vdp_functions vdp; } ;
struct TYPE_9__ {int * planes; } ;
struct TYPE_8__ {int (* VDPAUMapSurfacesNV ) (int,int *) ;int (* VDPAUSurfaceAccessNV ) (int ,int ) ;int (* VDPAURegisterVideoSurfaceNV ) (int ,int ,int,int *) ;} ;
typedef TYPE_3__ GL ;


 int BRAINDEATH (intptr_t) ;
 int CHECK_VDP_ERROR (struct ra_hwdec_mapper*,char*) ;
 int GL_READ_ONLY ;
 int GL_TEXTURE_2D ;
 scalar_t__ mapper_init (struct ra_hwdec_mapper*) ;
 int mapper_uninit (struct ra_hwdec_mapper*) ;
 int mark_vdpau_objects_uninitialized (struct ra_hwdec_mapper*) ;
 int mp_vdpau_handle_preemption (TYPE_5__*,int *) ;
 int mp_vdpau_mixer_render (int ,int *,int ,int *,TYPE_4__*,int *) ;
 void* ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 int ra_find_unorm_format (int ,int,int) ;
 int stub1 (intptr_t,int *,int*,int*) ;
 int stub2 (int ,int ,int,int *) ;
 int stub3 (int ,int ) ;
 int stub4 (int,int *) ;
 int stub5 (int,int *) ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = p->gl;
    struct vdp_functions *vdp = &p->ctx->vdp;
    VdpStatus vdp_st;

    int pe = mp_vdpau_handle_preemption(p->ctx, &p->preemption_counter);
    if (pe < 1) {
        mark_vdpau_objects_uninitialized(mapper);
        if (pe < 0)
            return -1;
        mapper_uninit(mapper);
        if (mapper_init(mapper) < 0)
            return -1;
    }

    if (p->direct_mode) {
        VdpVideoSurface surface = (intptr_t)mapper->src->planes[3];


        VdpChromaType s_chroma_type;
        uint32_t s_w, s_h;
        vdp_st = vdp->video_surface_get_parameters(surface, &s_chroma_type, &s_w, &s_h);
        CHECK_VDP_ERROR(mapper, "Error when calling vdp_video_surface_get_parameters");

        p->vdpgl_surface = gl->VDPAURegisterVideoSurfaceNV(BRAINDEATH(surface),
                                                           GL_TEXTURE_2D,
                                                           4, p->gl_textures);
        if (!p->vdpgl_surface)
            return -1;

        gl->VDPAUSurfaceAccessNV(p->vdpgl_surface, GL_READ_ONLY);
        gl->VDPAUMapSurfacesNV(1, &p->vdpgl_surface);

        p->mapped = 1;

        for (int n = 0; n < 4; n++) {
            bool chroma = n >= 2;
            int w_scale = chroma ? p->direct_desc.chroma_w : 1;
            int h_scale = chroma ? p->direct_desc.chroma_h * 2 : 2;

            struct ra_tex_params params = {
                .dimensions = 2,
                .w = s_w / w_scale,
                .h = s_h / h_scale,
                .d = 1,
                .format = ra_find_unorm_format(mapper->ra, 1, chroma ? 2 : 1),
                .render_src = 1,
            };

            if (!params.format)
                return -1;

            mapper->tex[n] =
                ra_create_wrapped_tex(mapper->ra, &params, p->gl_textures[n]);
            if (!mapper->tex[n])
                return -1;
        }
    } else {
        if (!p->vdpgl_surface)
            return -1;

        mp_vdpau_mixer_render(p->mixer, ((void*)0), p->vdp_surface, ((void*)0), mapper->src,
                              ((void*)0));

        gl->VDPAUMapSurfacesNV(1, &p->vdpgl_surface);

        p->mapped = 1;

        struct ra_tex_params params = {
            .dimensions = 2,
            .w = mapper->src_params.w,
            .h = mapper->src_params.h,
            .d = 1,
            .format = ra_find_unorm_format(mapper->ra, 1, 4),
            .render_src = 1,
            .src_linear = 1,
        };

        if (!params.format)
            return -1;

        mapper->tex[0] =
            ra_create_wrapped_tex(mapper->ra, &params, p->gl_textures[0]);
        if (!mapper->tex[0])
            return -1;
    }

    return 0;
}
