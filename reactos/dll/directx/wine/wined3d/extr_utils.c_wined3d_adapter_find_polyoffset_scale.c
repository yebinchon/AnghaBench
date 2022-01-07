
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_vec3 {float member_0; float member_1; float member_2; } ;
struct TYPE_6__ {int (* p_glDisable ) (int ) ;int (* p_glDeleteTextures ) (int,int *) ;int (* p_glGetTexImage ) (int ,int ,int ,int ,int*) ;int (* p_glBindTexture ) (int ,int ) ;int (* p_glPolygonOffset ) (float,float) ;int (* p_glClear ) (int) ;int (* p_glViewport ) (int ,int ,int,int) ;int (* p_glEnable ) (int ) ;int (* p_glClearDepth ) (float) ;int (* p_glClearColor ) (float,float,float,float) ;int (* p_glTexImage2D ) (int ,int ,int ,int,int,int ,int ,int ,int ) ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glGenTextures ) (int,int *) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct TYPE_5__ {int (* glBindFramebuffer ) (int ,int ) ;int (* glDeleteFramebuffers ) (int,int *) ;int (* glDeleteRenderbuffers ) (int,int *) ;int (* glFramebufferRenderbuffer ) (int ,int ,int ,int ) ;int (* glFramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* glGenFramebuffers ) (int,int *) ;int (* glRenderbufferStorage ) (int ,int ,int,int) ;int (* glBindRenderbuffer ) (int ,int ) ;int (* glGenRenderbuffers ) (int,int *) ;} ;
struct wined3d_gl_info {TYPE_3__ gl_ops; TYPE_1__ fbo_ops; } ;
struct wined3d_color {float member_0; float member_1; float member_2; float member_3; } ;
struct wined3d_caps_gl_ctx {struct wined3d_gl_info* gl_info; } ;
struct TYPE_8__ {scalar_t__ offscreen_rendering_mode; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef int DWORD ;


 int ERR (char*,unsigned int) ;
 int FIXME (char*,unsigned int) ;
 int GL_BGRA ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_ATTACHMENT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_DEPTH_TEST ;
 int GL_FRAMEBUFFER ;
 int GL_POLYGON_OFFSET_FILL ;
 int GL_RENDERBUFFER ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAX_LEVEL ;
 int GL_UNSIGNED_INT_8_8_8_8_REV ;
 scalar_t__ ORM_FBO ;
 int TRACE (char*,unsigned int,unsigned int,...) ;
 int checkGLcall (char*) ;
 int draw_test_quad (struct wined3d_caps_gl_ctx*,struct wined3d_vec3 const*,struct wined3d_color const*) ;
 int stub1 (int,int *) ;
 int stub10 (int ,int ,int ,int ,int ) ;
 int stub11 (int ,int ,int ,int ) ;
 int stub12 (float,float,float,float) ;
 int stub13 (float) ;
 int stub14 (int ) ;
 int stub15 (int ) ;
 int stub16 (int ,int ,int,int) ;
 int stub17 (int) ;
 int stub18 (float,float) ;
 int stub19 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub20 (int ,int ,int ,int ,int*) ;
 int stub21 (int,int *) ;
 int stub22 (int,int *) ;
 int stub23 (int,int *) ;
 int stub24 (int ,int ) ;
 int stub25 (int ) ;
 int stub26 (int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ,int,int,int ,int ,int ,int ) ;
 int stub5 (int,int *) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ,int,int) ;
 int stub8 (int,int *) ;
 int stub9 (int ,int ) ;
 TYPE_4__ wined3d_settings ;

__attribute__((used)) static float wined3d_adapter_find_polyoffset_scale(struct wined3d_caps_gl_ctx *ctx, GLenum format)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    static const struct wined3d_color blue = {0.0f, 0.0f, 1.0f, 1.0f};
    GLuint fbo, color, depth;
    unsigned int low = 0, high = 32, cur;
    DWORD readback[256];
    static const struct wined3d_vec3 geometry[] =
    {
        {-1.0f, -1.0f, -1.0f},
        { 1.0f, -1.0f, 0.0f},
        {-1.0f, 1.0f, -1.0f},
        { 1.0f, 1.0f, 0.0f},
    };



    unsigned int fallback = 23;

    if (wined3d_settings.offscreen_rendering_mode != ORM_FBO)
    {
        FIXME("No FBOs, assuming polyoffset scale of 2^%u.\n", fallback);
        return (float)(1u << fallback);
    }

    gl_info->gl_ops.gl.p_glGenTextures(1, &color);
    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, color);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 0);
    gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, 256, 1, 0, GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, 0);

    gl_info->fbo_ops.glGenRenderbuffers(1, &depth);
    gl_info->fbo_ops.glBindRenderbuffer(GL_RENDERBUFFER, depth);
    gl_info->fbo_ops.glRenderbufferStorage(GL_RENDERBUFFER, format, 256, 1);

    gl_info->fbo_ops.glGenFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, fbo);
    gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, color, 0);
    gl_info->fbo_ops.glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, depth);
    checkGLcall("Setup framebuffer");

    gl_info->gl_ops.gl.p_glClearColor(0.0f, 0.0f, 0.5f, 0.0f);
    gl_info->gl_ops.gl.p_glClearDepth(0.5f);
    gl_info->gl_ops.gl.p_glEnable(GL_DEPTH_TEST);
    gl_info->gl_ops.gl.p_glEnable(GL_POLYGON_OFFSET_FILL);
    gl_info->gl_ops.gl.p_glViewport(0, 0, 256, 1);
    checkGLcall("Misc parameters");

    for (;;)
    {
        if (high - low <= 1)
        {
            ERR("PolygonOffset scale factor detection failed, using fallback value 2^%u.\n", fallback);
            cur = fallback;
            break;
        }
        cur = (low + high) / 2;

        gl_info->gl_ops.gl.p_glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


        gl_info->gl_ops.gl.p_glPolygonOffset(0.0f, (float)(1u << cur) * 0.25f);
        draw_test_quad(ctx, geometry, &blue);
        checkGLcall("Test draw");


        gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, color);
        gl_info->gl_ops.gl.p_glGetTexImage(GL_TEXTURE_2D, 0, GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, readback);
        checkGLcall("readback");

        TRACE("low %02u, high %02u, cur %2u, 0=0x%08x, 125=0x%08x, 131=0x%08x, 255=0x%08x\n",
                low, high, cur, readback[0], readback[125], readback[131], readback[255]);

        if ((readback[125] & 0xff) < 0xa0)
            high = cur;
        else if ((readback[131] & 0xff) > 0xa0)
            low = cur;
        else
        {
            TRACE("Found scale factor 2^%u for format %x.\n", cur, format);
            break;
        }
    }

    gl_info->gl_ops.gl.p_glDeleteTextures(1, &color);
    gl_info->fbo_ops.glDeleteRenderbuffers(1, &depth);
    gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, 0);
    checkGLcall("Delete framebuffer");

    gl_info->gl_ops.gl.p_glDisable(GL_DEPTH_TEST);
    gl_info->gl_ops.gl.p_glDisable(GL_POLYGON_OFFSET_FILL);
    return (float)(1u << cur);
}
