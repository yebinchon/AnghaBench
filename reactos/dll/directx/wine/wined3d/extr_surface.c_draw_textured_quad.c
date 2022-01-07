
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int srgb_decode; int mip_filter; void* min_filter; void* mag_filter; } ;
struct TYPE_14__ {TYPE_4__ sampler_desc; int name; } ;
struct wined3d_texture {TYPE_5__ texture_rgb; } ;
struct TYPE_11__ {int (* p_glEnd ) () ;int (* p_glVertex2i ) (int ,int ) ;int (* p_glTexCoord3fv ) (int *) ;int (* p_glBegin ) (int ) ;int (* p_glTexEnvi ) (int ,int ,int ) ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glEnable ) (int ) ;} ;
struct TYPE_12__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct blt_info {int bind_target; TYPE_1__* texcoords; } ;
typedef enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
struct TYPE_15__ {int bottom; int right; int left; int top; } ;
struct TYPE_10__ {int x; } ;
typedef TYPE_6__ RECT ;


 size_t EXT_TEXTURE_SRGB_DECODE ;
 int FALSE ;
 int GL_CLAMP_TO_EDGE ;
 int GL_REPLACE ;
 int GL_SKIP_DECODE_EXT ;
 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_SRGB_DECODE_EXT ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_TRIANGLE_STRIP ;
 int WINED3D_TEXF_NONE ;
 void* WINED3D_TEXF_POINT ;
 int checkGLcall (char*) ;
 int context_bind_texture (struct wined3d_context*,int ,int ) ;
 int stub1 (int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int *) ;
 int stub12 (int ,int ) ;
 int stub13 (int *) ;
 int stub14 (int ,int ) ;
 int stub15 (int *) ;
 int stub16 (int ,int ) ;
 int stub17 () ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ) ;
 int stub9 (int *) ;
 int texture2d_get_blt_info (struct wined3d_texture*,unsigned int,TYPE_6__ const*,struct blt_info*) ;
 int wined3d_gl_mag_filter (int) ;
 int wined3d_gl_min_mip_filter (int,int ) ;

void draw_textured_quad(struct wined3d_texture *texture, unsigned int sub_resource_idx,
        struct wined3d_context *context, const RECT *src_rect, const RECT *dst_rect,
        enum wined3d_texture_filter_type filter)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct blt_info info;

    texture2d_get_blt_info(texture, sub_resource_idx, src_rect, &info);

    gl_info->gl_ops.gl.p_glEnable(info.bind_target);
    checkGLcall("glEnable(bind_target)");

    context_bind_texture(context, info.bind_target, texture->texture_rgb.name);


    gl_info->gl_ops.gl.p_glTexParameteri(info.bind_target, GL_TEXTURE_MAG_FILTER, wined3d_gl_mag_filter(filter));
    checkGLcall("glTexParameteri");
    gl_info->gl_ops.gl.p_glTexParameteri(info.bind_target, GL_TEXTURE_MIN_FILTER,
            wined3d_gl_min_mip_filter(filter, WINED3D_TEXF_NONE));
    checkGLcall("glTexParameteri");
    gl_info->gl_ops.gl.p_glTexParameteri(info.bind_target, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glTexParameteri(info.bind_target, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    if (context->gl_info->supported[EXT_TEXTURE_SRGB_DECODE])
        gl_info->gl_ops.gl.p_glTexParameteri(info.bind_target, GL_TEXTURE_SRGB_DECODE_EXT, GL_SKIP_DECODE_EXT);
    gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    checkGLcall("glTexEnvi");


    gl_info->gl_ops.gl.p_glBegin(GL_TRIANGLE_STRIP);
    gl_info->gl_ops.gl.p_glTexCoord3fv(&info.texcoords[0].x);
    gl_info->gl_ops.gl.p_glVertex2i(dst_rect->left, dst_rect->top);

    gl_info->gl_ops.gl.p_glTexCoord3fv(&info.texcoords[1].x);
    gl_info->gl_ops.gl.p_glVertex2i(dst_rect->right, dst_rect->top);

    gl_info->gl_ops.gl.p_glTexCoord3fv(&info.texcoords[2].x);
    gl_info->gl_ops.gl.p_glVertex2i(dst_rect->left, dst_rect->bottom);

    gl_info->gl_ops.gl.p_glTexCoord3fv(&info.texcoords[3].x);
    gl_info->gl_ops.gl.p_glVertex2i(dst_rect->right, dst_rect->bottom);
    gl_info->gl_ops.gl.p_glEnd();


    context_bind_texture(context, info.bind_target, 0);



    texture->texture_rgb.sampler_desc.mag_filter = WINED3D_TEXF_POINT;
    texture->texture_rgb.sampler_desc.min_filter = WINED3D_TEXF_POINT;
    texture->texture_rgb.sampler_desc.mip_filter = WINED3D_TEXF_NONE;
    texture->texture_rgb.sampler_desc.srgb_decode = FALSE;
}
