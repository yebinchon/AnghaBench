
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* glBindFramebuffer ) (int ,int ) ;int (* glDeleteFramebuffers ) (int,int *) ;int (* glFramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* glGenFramebuffers ) (int,int *) ;} ;
struct TYPE_4__ {int (* p_glDeleteTextures ) (int,int *) ;int (* p_glGetTexImage ) (int ,int ,int ,int ,int*) ;int (* p_glBindTexture ) (int ,int ) ;int (* p_glClear ) (int ) ;int (* p_glClearColor ) (float,float,float,float) ;int (* p_glTexImage2D ) (int ,int ,int ,unsigned int,int,int ,int ,int ,int *) ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glGenTextures ) (int,int *) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_3__ fbo_ops; TYPE_2__ gl_ops; } ;
struct wined3d_color {float member_0; float member_1; float member_2; float member_3; } ;
struct wined3d_caps_gl_ctx {struct wined3d_gl_info* gl_info; } ;
typedef int GLuint ;
typedef int DWORD ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (int*) ;
 int FALSE ;
 int GL_BGRA ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_EXTCALL (int ) ;
 int GL_FRAMEBUFFER ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAX_LEVEL ;
 int GL_UNSIGNED_INT_8_8_8_8_REV ;
 int TRACE (char*,int,int,int,int) ;
 int TRUE ;
 int checkGLcall (char*) ;
 int draw_test_quad (struct wined3d_caps_gl_ctx*,int *,struct wined3d_color const*) ;
 int glViewportIndexedf (int ,float const,float const,float,float) ;
 int stub1 (int,int *) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int ,int ,int ,int*) ;
 int stub12 (int,int *) ;
 int stub13 (int,int *) ;
 int stub14 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ,unsigned int,int,int ,int ,int ,int *) ;
 int stub5 (int,int *) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ,int ,int ,int ) ;
 int stub8 (float,float,float,float) ;
 int stub9 (int ) ;

BOOL wined3d_caps_gl_ctx_test_viewport_subpixel_bits(struct wined3d_caps_gl_ctx *ctx)
{
    static const struct wined3d_color red = {1.0f, 0.0f, 0.0f, 1.0f};
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    static const float offset = -63.0f / 128.0f;
    GLuint texture, fbo;
    DWORD readback[4];
    unsigned int i;

    gl_info->gl_ops.gl.p_glGenTextures(1, &texture);
    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, texture);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 0);
    gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, ARRAY_SIZE(readback), 1, 0,
            GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, ((void*)0));
    gl_info->fbo_ops.glGenFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, fbo);
    gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
            GL_TEXTURE_2D, texture, 0);
    checkGLcall("create resources");

    gl_info->gl_ops.gl.p_glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
    gl_info->gl_ops.gl.p_glClear(GL_COLOR_BUFFER_BIT);
    GL_EXTCALL(glViewportIndexedf(0, offset, offset, 4.0f, 1.0f));
    draw_test_quad(ctx, ((void*)0), &red);
    checkGLcall("draw");

    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, texture);
    gl_info->gl_ops.gl.p_glGetTexImage(GL_TEXTURE_2D, 0,
            GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, readback);
    checkGLcall("readback");

    TRACE("Readback colors are 0x%08x, 0x%08x, 0x%08x, 0x%08x.\n",
            readback[0], readback[1], readback[2], readback[3]);

    gl_info->gl_ops.gl.p_glDeleteTextures(1, &texture);
    gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, 0);
    checkGLcall("delete resources");

    for (i = 0; i < ARRAY_SIZE(readback); ++i)
    {
        if (readback[i] != 0xffff0000)
            return FALSE;
    }
    return TRUE;
}
