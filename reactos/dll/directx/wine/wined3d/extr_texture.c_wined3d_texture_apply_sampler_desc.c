
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_texture {int flags; int target; } ;
struct wined3d_sampler_desc {scalar_t__ address_u; scalar_t__ address_v; scalar_t__ address_w; scalar_t__ mag_filter; scalar_t__ min_filter; scalar_t__ mip_filter; scalar_t__ max_anisotropy; int lod_bias; scalar_t__ compare; scalar_t__ srgb_decode; int * border_color; } ;
struct TYPE_7__ {int (* p_glTexEnvf ) (int ,int ,int ) ;int (* p_glTexParameteri ) (int ,int ,scalar_t__) ;int (* p_glTexParameterfv ) (int ,int ,int *) ;} ;
struct TYPE_8__ {TYPE_3__ gl; } ;
struct wined3d_gl_info {scalar_t__* wrap_lookup; TYPE_4__ gl_ops; scalar_t__* supported; } ;
struct wined3d_context {TYPE_1__* d3d_info; struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {scalar_t__ address_u; scalar_t__ address_v; scalar_t__ address_w; scalar_t__ mag_filter; scalar_t__ min_filter; scalar_t__ mip_filter; scalar_t__ max_anisotropy; scalar_t__ compare; scalar_t__ srgb_decode; int border_color; } ;
struct gl_texture {TYPE_2__ sampler_desc; } ;
struct TYPE_5__ {int wined3d_creation_flags; } ;
typedef int GLenum ;
typedef scalar_t__ DWORD ;


 size_t ARB_TEXTURE_FILTER_ANISOTROPIC ;
 size_t EXT_TEXTURE_LOD_BIAS ;
 size_t EXT_TEXTURE_SRGB_DECODE ;
 scalar_t__ GL_COMPARE_R_TO_TEXTURE_ARB ;
 scalar_t__ GL_DECODE_EXT ;
 scalar_t__ GL_NONE ;
 scalar_t__ GL_SKIP_DECODE_EXT ;
 int GL_TEXTURE_BORDER_COLOR ;
 int GL_TEXTURE_COMPARE_MODE_ARB ;
 int GL_TEXTURE_FILTER_CONTROL_EXT ;
 int GL_TEXTURE_LOD_BIAS_EXT ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MAX_ANISOTROPY ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_SRGB_DECODE_EXT ;
 int GL_TEXTURE_WRAP_R ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int TRACE (char*,struct wined3d_texture*,struct wined3d_sampler_desc const*,struct wined3d_context const*) ;
 int WARN (char*) ;
 int WINED3D_SRGB_READ_WRITE_CONTROL ;
 scalar_t__ WINED3D_TADDRESS_WRAP ;
 int WINED3D_TEXTURE_IS_SRGB ;
 int checkGLcall (char*) ;
 scalar_t__ memcmp (int ,int *,int) ;
 int memcpy (int ,int *,int) ;
 int stub1 (int ,int ,scalar_t__) ;
 int stub10 (int ,int ,scalar_t__) ;
 int stub11 (int ,int ,int ) ;
 int stub2 (int ,int ,scalar_t__) ;
 int stub3 (int ,int ,scalar_t__) ;
 int stub4 (int ,int ,int *) ;
 int stub5 (int ,int ,scalar_t__) ;
 int stub6 (int ,int ,scalar_t__) ;
 int stub7 (int ,int ,scalar_t__) ;
 int stub8 (int ,int ,scalar_t__) ;
 int stub9 (int ,int ,scalar_t__) ;
 scalar_t__ wined3d_gl_mag_filter (scalar_t__) ;
 scalar_t__ wined3d_gl_min_mip_filter (scalar_t__,scalar_t__) ;
 struct gl_texture* wined3d_texture_get_gl_texture (struct wined3d_texture*,int) ;

void wined3d_texture_apply_sampler_desc(struct wined3d_texture *texture,
        const struct wined3d_sampler_desc *sampler_desc, const struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum target = texture->target;
    struct gl_texture *gl_tex;
    DWORD state;

    TRACE("texture %p, sampler_desc %p, context %p.\n", texture, sampler_desc, context);

    gl_tex = wined3d_texture_get_gl_texture(texture, texture->flags & WINED3D_TEXTURE_IS_SRGB);

    state = sampler_desc->address_u;
    if (state != gl_tex->sampler_desc.address_u)
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_WRAP_S,
                gl_info->wrap_lookup[state - WINED3D_TADDRESS_WRAP]);
        gl_tex->sampler_desc.address_u = state;
    }

    state = sampler_desc->address_v;
    if (state != gl_tex->sampler_desc.address_v)
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_WRAP_T,
                gl_info->wrap_lookup[state - WINED3D_TADDRESS_WRAP]);
        gl_tex->sampler_desc.address_v = state;
    }

    state = sampler_desc->address_w;
    if (state != gl_tex->sampler_desc.address_w)
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_WRAP_R,
                gl_info->wrap_lookup[state - WINED3D_TADDRESS_WRAP]);
        gl_tex->sampler_desc.address_w = state;
    }

    if (memcmp(gl_tex->sampler_desc.border_color, sampler_desc->border_color,
            sizeof(gl_tex->sampler_desc.border_color)))
    {
        gl_info->gl_ops.gl.p_glTexParameterfv(target, GL_TEXTURE_BORDER_COLOR, &sampler_desc->border_color[0]);
        memcpy(gl_tex->sampler_desc.border_color, sampler_desc->border_color,
                sizeof(gl_tex->sampler_desc.border_color));
    }

    state = sampler_desc->mag_filter;
    if (state != gl_tex->sampler_desc.mag_filter)
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_MAG_FILTER, wined3d_gl_mag_filter(state));
        gl_tex->sampler_desc.mag_filter = state;
    }

    if (sampler_desc->min_filter != gl_tex->sampler_desc.min_filter
            || sampler_desc->mip_filter != gl_tex->sampler_desc.mip_filter)
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_MIN_FILTER,
                wined3d_gl_min_mip_filter(sampler_desc->min_filter, sampler_desc->mip_filter));
        gl_tex->sampler_desc.min_filter = sampler_desc->min_filter;
        gl_tex->sampler_desc.mip_filter = sampler_desc->mip_filter;
    }

    state = sampler_desc->max_anisotropy;
    if (state != gl_tex->sampler_desc.max_anisotropy)
    {
        if (gl_info->supported[ARB_TEXTURE_FILTER_ANISOTROPIC])
            gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_MAX_ANISOTROPY, state);
        else
            WARN("Anisotropic filtering not supported.\n");
        gl_tex->sampler_desc.max_anisotropy = state;
    }

    if (!sampler_desc->srgb_decode != !gl_tex->sampler_desc.srgb_decode
            && (context->d3d_info->wined3d_creation_flags & WINED3D_SRGB_READ_WRITE_CONTROL)
            && gl_info->supported[EXT_TEXTURE_SRGB_DECODE])
    {
        gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_SRGB_DECODE_EXT,
                sampler_desc->srgb_decode ? GL_DECODE_EXT : GL_SKIP_DECODE_EXT);
        gl_tex->sampler_desc.srgb_decode = sampler_desc->srgb_decode;
    }

    if (!sampler_desc->compare != !gl_tex->sampler_desc.compare)
    {
        if (sampler_desc->compare)
            gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_COMPARE_MODE_ARB, GL_COMPARE_R_TO_TEXTURE_ARB);
        else
            gl_info->gl_ops.gl.p_glTexParameteri(target, GL_TEXTURE_COMPARE_MODE_ARB, GL_NONE);
        gl_tex->sampler_desc.compare = sampler_desc->compare;
    }

    checkGLcall("Texture parameter application");

    if (gl_info->supported[EXT_TEXTURE_LOD_BIAS])
    {
        gl_info->gl_ops.gl.p_glTexEnvf(GL_TEXTURE_FILTER_CONTROL_EXT,
                GL_TEXTURE_LOD_BIAS_EXT, sampler_desc->lod_bias);
        checkGLcall("glTexEnvf(GL_TEXTURE_LOD_BIAS_EXT, ...)");
    }
}
