#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vdp_functions {int /*<<< orphan*/  (* video_surface_get_parameters ) (intptr_t,int /*<<< orphan*/ *,int*,int*) ;} ;
struct ra_tex_params {int dimensions; int w; int h; int d; int render_src; int src_linear; int /*<<< orphan*/  format; } ;
struct TYPE_7__ {int w; int h; } ;
struct ra_hwdec_mapper {void** tex; int /*<<< orphan*/  ra; TYPE_2__ src_params; TYPE_4__* src; struct priv* priv; } ;
struct TYPE_6__ {int chroma_w; int chroma_h; } ;
struct priv {int mapped; int /*<<< orphan*/ * gl_textures; int /*<<< orphan*/  vdpgl_surface; int /*<<< orphan*/  vdp_surface; int /*<<< orphan*/  mixer; TYPE_1__ direct_desc; scalar_t__ direct_mode; int /*<<< orphan*/  preemption_counter; TYPE_5__* ctx; TYPE_3__* gl; } ;
typedef  intptr_t VdpVideoSurface ;
typedef  int /*<<< orphan*/  VdpStatus ;
typedef  int /*<<< orphan*/  VdpChromaType ;
struct TYPE_10__ {struct vdp_functions vdp; } ;
struct TYPE_9__ {int /*<<< orphan*/ * planes; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* VDPAUMapSurfacesNV ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* VDPAUSurfaceAccessNV ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* VDPAURegisterVideoSurfaceNV ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (intptr_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*,char*) ; 
 int /*<<< orphan*/  GL_READ_ONLY ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 scalar_t__ FUNC2 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_hwdec_mapper*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,struct ra_tex_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (intptr_t,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = p->gl;
    struct vdp_functions *vdp = &p->ctx->vdp;
    VdpStatus vdp_st;

    int pe = FUNC5(p->ctx, &p->preemption_counter);
    if (pe < 1) {
        FUNC4(mapper);
        if (pe < 0)
            return -1;
        FUNC3(mapper);
        if (FUNC2(mapper) < 0)
            return -1;
    }

    if (p->direct_mode) {
        VdpVideoSurface surface = (intptr_t)mapper->src->planes[3];

        // We need the uncropped size.
        VdpChromaType s_chroma_type;
        uint32_t s_w, s_h;
        vdp_st = vdp->video_surface_get_parameters(surface, &s_chroma_type, &s_w, &s_h);
        FUNC1(mapper, "Error when calling vdp_video_surface_get_parameters");

        p->vdpgl_surface = gl->VDPAURegisterVideoSurfaceNV(FUNC0(surface),
                                                           GL_TEXTURE_2D,
                                                           4, p->gl_textures);
        if (!p->vdpgl_surface)
            return -1;

        gl->VDPAUSurfaceAccessNV(p->vdpgl_surface, GL_READ_ONLY);
        gl->VDPAUMapSurfacesNV(1, &p->vdpgl_surface);

        p->mapped = true;

        for (int n = 0; n < 4; n++) {
            bool chroma = n >= 2;
            int w_scale = chroma ? p->direct_desc.chroma_w : 1;
            int h_scale = chroma ? p->direct_desc.chroma_h * 2 : 2;

            struct ra_tex_params params = {
                .dimensions = 2,
                .w = s_w / w_scale,
                .h = s_h / h_scale,
                .d = 1,
                .format = FUNC8(mapper->ra, 1, chroma ? 2 : 1),
                .render_src = true,
            };

            if (!params.format)
                return -1;

            mapper->tex[n] =
                FUNC7(mapper->ra, &params, p->gl_textures[n]);
            if (!mapper->tex[n])
                return -1;
        }
    } else {
        if (!p->vdpgl_surface)
            return -1;

        FUNC6(p->mixer, NULL, p->vdp_surface, NULL, mapper->src,
                              NULL);

        gl->VDPAUMapSurfacesNV(1, &p->vdpgl_surface);

        p->mapped = true;

        struct ra_tex_params params = {
            .dimensions = 2,
            .w = mapper->src_params.w,
            .h = mapper->src_params.h,
            .d = 1,
            .format = FUNC8(mapper->ra, 1, 4),
            .render_src = true,
            .src_linear = true,
        };

        if (!params.format)
            return -1;

        mapper->tex[0] =
            FUNC7(mapper->ra, &params, p->gl_textures[0]);
        if (!mapper->tex[0])
            return -1;
    }

    return 0;
}