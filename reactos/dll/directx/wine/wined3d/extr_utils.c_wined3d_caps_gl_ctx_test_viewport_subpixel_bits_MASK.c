#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* glBindFramebuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* glDeleteFramebuffers ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* glFramebufferTexture2D ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* glGenFramebuffers ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* p_glDeleteTextures ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* p_glGetTexImage ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* p_glBindTexture ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glClear ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glClearColor ) (float,float,float,float) ;int /*<<< orphan*/  (* p_glTexImage2D ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* p_glTexParameteri ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glGenTextures ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_3__ fbo_ops; TYPE_2__ gl_ops; } ;
struct wined3d_color {float member_0; float member_1; float member_2; float member_3; } ;
struct wined3d_caps_gl_ctx {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_BGRA ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAX_LEVEL ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT_8_8_8_8_REV ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_caps_gl_ctx*,int /*<<< orphan*/ *,struct wined3d_color const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float const,float const,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

BOOL FUNC20(struct wined3d_caps_gl_ctx *ctx)
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
    gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, FUNC0(readback), 1, 0,
            GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, NULL);
    gl_info->fbo_ops.glGenFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, fbo);
    gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
            GL_TEXTURE_2D, texture, 0);
    FUNC3("create resources");

    gl_info->gl_ops.gl.p_glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
    gl_info->gl_ops.gl.p_glClear(GL_COLOR_BUFFER_BIT);
    FUNC1(FUNC5(0, offset, offset, 4.0f, 1.0f));
    FUNC4(ctx, NULL, &red);
    FUNC3("draw");

    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, texture);
    gl_info->gl_ops.gl.p_glGetTexImage(GL_TEXTURE_2D, 0,
            GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, readback);
    FUNC3("readback");

    FUNC2("Readback colors are 0x%08x, 0x%08x, 0x%08x, 0x%08x.\n",
            readback[0], readback[1], readback[2], readback[3]);

    gl_info->gl_ops.gl.p_glDeleteTextures(1, &texture);
    gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, 0);
    FUNC3("delete resources");

    for (i = 0; i < FUNC0(readback); ++i)
    {
        if (readback[i] != 0xffff0000)
            return FALSE;
    }
    return TRUE;
}