
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vdp_functions {int (* output_surface_create ) (int ,int ,int ,int ,int *) ;} ;
struct TYPE_10__ {int hw_subfmt; int imgfmt; int h; int w; } ;
struct ra_hwdec_mapper {int vdpau_fields; int log; TYPE_2__ dst_params; TYPE_2__ src_params; int ra; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {TYPE_6__* ctx; } ;
struct TYPE_12__ {int chroma_w; } ;
struct priv {int vdpgl_initialized; int direct_mode; int vdpgl_surface; int * gl_textures; int vdp_surface; TYPE_6__* ctx; TYPE_5__ direct_desc; int preemption_counter; int mixer; TYPE_3__* gl; } ;
typedef int VdpStatus ;
struct TYPE_13__ {int vdp_device; int get_proc_address; struct vdp_functions vdp; } ;
struct TYPE_11__ {int (* VDPAUSurfaceAccessNV ) (int ,int ) ;int (* VDPAURegisterOutputSurfaceNV ) (int ,int ,int,int *) ;int (* BindTexture ) (int ,int ) ;int (* TexParameteri ) (int ,int ,int ) ;int (* GenTextures ) (int,int *) ;int (* VDPAUInitNV ) (int ,int ) ;} ;
struct TYPE_9__ {struct priv_owner* priv; } ;
typedef TYPE_3__ GL ;


 int BRAINDEATH (int ) ;
 int CHECK_VDP_ERROR (struct ra_hwdec_mapper*,char*) ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_NEAREST ;
 int GL_READ_ONLY ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int IMGFMT_420P ;
 int IMGFMT_444P ;
 int IMGFMT_NV12 ;
 int IMGFMT_NV24 ;
 int IMGFMT_RGB0 ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int VDP_INVALID_HANDLE ;
 int VDP_RGBA_FORMAT_B8G8R8A8 ;
 int gl_check_error (TYPE_3__*,int ,char*) ;
 int mp_imgfmt_to_name (int) ;
 scalar_t__ mp_vdpau_handle_preemption (TYPE_6__*,int *) ;
 int mp_vdpau_mixer_create (TYPE_6__*,int ) ;
 int ra_get_imgfmt_desc (int ,int,TYPE_5__*) ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ,int ) ;
 int stub11 (int ,int ,int ) ;
 int stub12 (int ,int ,int ) ;
 int stub13 (int ,int ,int ) ;
 int stub14 (int ,int ) ;
 int stub15 (int ,int ,int ,int ,int *) ;
 int stub16 (int ,int ,int,int *) ;
 int stub17 (int ,int ) ;
 int stub2 (int,int *) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *p_owner = mapper->owner->priv;
    struct priv *p = mapper->priv;

    p->gl = ra_gl_get(mapper->ra);
    p->ctx = p_owner->ctx;

    GL *gl = p->gl;
    struct vdp_functions *vdp = &p->ctx->vdp;
    VdpStatus vdp_st;

    p->vdp_surface = VDP_INVALID_HANDLE;
    p->mixer = mp_vdpau_mixer_create(p->ctx, mapper->log);
    if (!p->mixer)
        return -1;

    mapper->dst_params = mapper->src_params;

    if (mp_vdpau_handle_preemption(p->ctx, &p->preemption_counter) < 0)
        return -1;

    gl->VDPAUInitNV(BRAINDEATH(p->ctx->vdp_device), p->ctx->get_proc_address);

    p->vdpgl_initialized = 1;

    p->direct_mode = mapper->dst_params.hw_subfmt == IMGFMT_NV12 ||
                     mapper->dst_params.hw_subfmt == IMGFMT_NV24 ||
                     mapper->dst_params.hw_subfmt == IMGFMT_420P ||
                     mapper->dst_params.hw_subfmt == IMGFMT_444P;
    mapper->vdpau_fields = p->direct_mode;

    gl->GenTextures(4, p->gl_textures);

    if (p->direct_mode) {
        int imgfmt = mapper->dst_params.hw_subfmt;
        if (!ra_get_imgfmt_desc(mapper->ra, imgfmt, &p->direct_desc)) {
            MP_ERR(mapper, "Unsupported format: %s\n", mp_imgfmt_to_name(imgfmt));
            return -1;
        }
        mapper->dst_params.imgfmt = p->direct_desc.chroma_w == 1 ?
                                    IMGFMT_NV24 : IMGFMT_NV12;
        mapper->dst_params.hw_subfmt = 0;

        for (int n = 0; n < 4; n++) {
            gl->BindTexture(GL_TEXTURE_2D, p->gl_textures[n]);
            gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
            gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
            gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
            gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
            gl->BindTexture(GL_TEXTURE_2D, 0);
        }
    } else {
        gl->BindTexture(GL_TEXTURE_2D, p->gl_textures[0]);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        gl->BindTexture(GL_TEXTURE_2D, 0);

        vdp_st = vdp->output_surface_create(p->ctx->vdp_device,
                                            VDP_RGBA_FORMAT_B8G8R8A8,
                                            mapper->src_params.w,
                                            mapper->src_params.h,
                                            &p->vdp_surface);
        CHECK_VDP_ERROR(mapper, "Error when calling vdp_output_surface_create");

        p->vdpgl_surface = gl->VDPAURegisterOutputSurfaceNV(BRAINDEATH(p->vdp_surface),
                                                            GL_TEXTURE_2D,
                                                            1, p->gl_textures);
        if (!p->vdpgl_surface)
            return -1;

        gl->VDPAUSurfaceAccessNV(p->vdpgl_surface, GL_READ_ONLY);

        mapper->dst_params.imgfmt = IMGFMT_RGB0;
        mapper->dst_params.hw_subfmt = 0;
    }

    gl_check_error(gl, mapper->log, "After initializing vdpau OpenGL interop");

    return 0;
}
