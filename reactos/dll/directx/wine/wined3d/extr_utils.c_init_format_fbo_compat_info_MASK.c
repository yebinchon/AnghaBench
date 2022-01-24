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
struct TYPE_9__ {int /*<<< orphan*/  (* glDeleteFramebuffers ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* glBindFramebuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* glGenFramebuffers ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* p_glReadBuffer ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glDrawBuffer ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_glGetInternalformativ ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*) ;} ;
struct TYPE_8__ {TYPE_2__ gl; TYPE_1__ ext; } ;
struct wined3d_gl_info {unsigned int format_count; TYPE_4__ fbo_ops; struct wined3d_format* formats; TYPE_3__ gl_ops; scalar_t__* supported; } ;
struct wined3d_format {scalar_t__ rtInternal; scalar_t__ glInternal; int* flags; scalar_t__ glGammaInternal; int /*<<< orphan*/  id; } ;
struct wined3d_caps_gl_ctx {struct wined3d_gl_info* gl_info; } ;
struct TYPE_10__ {scalar_t__ offscreen_rendering_mode; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ GLint ;
typedef  scalar_t__ GLenum ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t ARB_INTERNALFORMAT_QUERY2 ; 
 unsigned int FUNC0 (int*) ; 
 size_t EXT_TEXTURE_SRGB_DECODE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER_BLEND ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER_RENDERABLE ; 
 scalar_t__ GL_FULL_SUPPORT ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int WINED3DFMT_FLAG_COMPRESSED ; 
 int WINED3DFMT_FLAG_FBO_ATTACHABLE ; 
 int WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB ; 
 int WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING ; 
 int WINED3DFMT_FLAG_RENDERTARGET ; 
 int WINED3DFMT_FLAG_SRGB_WRITE ; 
 size_t WINED3D_GL_RES_TYPE_TEX_2D ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_caps_gl_ctx*,struct wined3d_format*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_format*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 TYPE_5__ wined3d_settings ; 

__attribute__((used)) static void FUNC17(struct wined3d_caps_gl_ctx *ctx)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    unsigned int i, type;
    GLuint fbo;

    if (gl_info->supported[ARB_INTERNALFORMAT_QUERY2])
    {
        for (i = 0; i < gl_info->format_count; ++i)
        {
            GLint value;
            struct wined3d_format *format = &gl_info->formats[i];
            BOOL fallback_fmt_used = FALSE, regular_fmt_used = FALSE;
            GLenum rt_internal = format->rtInternal;

            if (!format->glInternal)
                continue;

            for (type = 0; type < FUNC0(format->flags); ++type)
            {
                gl_info->gl_ops.ext.p_glGetInternalformativ(FUNC16(type),
                        format->glInternal, GL_FRAMEBUFFER_RENDERABLE, 1, &value);
                if (value == GL_FULL_SUPPORT)
                {
                    FUNC2("Format %s is supported as FBO color attachment, resource type %u.\n",
                            FUNC5(format->id), type);
                    format->flags[type] |= WINED3DFMT_FLAG_FBO_ATTACHABLE;
                    format->rtInternal = format->glInternal;
                    regular_fmt_used = TRUE;

                    gl_info->gl_ops.ext.p_glGetInternalformativ(FUNC16(type),
                            format->glInternal, GL_FRAMEBUFFER_BLEND, 1, &value);
                    if (value == GL_FULL_SUPPORT)
                    {
                        FUNC2("Format %s supports post-pixelshader blending, resource type %u.\n",
                                    FUNC5(format->id), type);
                        format->flags[type] |= WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING;
                    }
                    else
                    {
                        FUNC2("Format %s doesn't support post-pixelshader blending, resource typed %u.\n",
                                FUNC5(format->id), type);
                        format->flags[type] &= ~WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING;
                    }
                }
                else
                {
                    if (!rt_internal)
                    {
                        if (format->flags[type] & WINED3DFMT_FLAG_RENDERTARGET)
                        {
                            FUNC3("Format %s with rendertarget flag is not supported as FBO color attachment"
                                    " and no fallback specified, resource type %u.\n",
                                    FUNC5(format->id), type);
                            format->flags[type] &= ~WINED3DFMT_FLAG_RENDERTARGET;
                        }
                        else
                            FUNC2("Format %s is not supported as FBO color attachment,"
                            " resource type %u.\n", FUNC5(format->id), type);
                        format->rtInternal = format->glInternal;
                    }
                    else
                    {
                        gl_info->gl_ops.ext.p_glGetInternalformativ(FUNC16(type),
                                rt_internal, GL_FRAMEBUFFER_RENDERABLE, 1, &value);
                        if (value == GL_FULL_SUPPORT)
                        {
                            FUNC2("Format %s rtInternal format is supported as FBO color attachment,"
                                    " resource type %u.\n", FUNC5(format->id), type);
                            fallback_fmt_used = TRUE;
                        }
                        else
                        {
                            FUNC3("Format %s rtInternal format is not supported as FBO color attachment,"
                                    " resource type %u.\n", FUNC5(format->id), type);
                            format->flags[type] &= ~WINED3DFMT_FLAG_RENDERTARGET;
                        }
                    }
                }

                if (format->glInternal != format->glGammaInternal)
                {
                    gl_info->gl_ops.ext.p_glGetInternalformativ(FUNC16(type),
                            format->glGammaInternal, GL_FRAMEBUFFER_RENDERABLE, 1, &value);
                    if (value == GL_FULL_SUPPORT)
                    {
                        FUNC2("Format %s's sRGB format is FBO attachable, resource type %u.\n",
                                FUNC5(format->id), type);
                        format->flags[type] |= WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB;
                        if (gl_info->supported[EXT_TEXTURE_SRGB_DECODE])
                            format->glInternal = format->glGammaInternal;
                    }
                    else
                    {
                        FUNC3("Format %s's sRGB format is not FBO attachable, resource type %u.\n",
                                FUNC5(format->id), type);
                        FUNC6(format, WINED3DFMT_FLAG_SRGB_WRITE);
                    }
                }
                else if (format->flags[type] & WINED3DFMT_FLAG_FBO_ATTACHABLE)
                    format->flags[type] |= WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB;
            }

            if (fallback_fmt_used && regular_fmt_used)
            {
                FUNC1("Format %s needs different render target formats for different resource types.\n",
                        FUNC5(format->id));
                FUNC6(format, WINED3DFMT_FLAG_RENDERTARGET | WINED3DFMT_FLAG_FBO_ATTACHABLE
                        | WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB | WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING);
            }
        }
        return;
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        gl_info->fbo_ops.glGenFramebuffers(1, &fbo);
        gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, fbo);
        gl_info->gl_ops.gl.p_glDrawBuffer(GL_COLOR_ATTACHMENT0);
        gl_info->gl_ops.gl.p_glReadBuffer(GL_COLOR_ATTACHMENT0);
    }

    for (i = 0; i < gl_info->format_count; ++i)
    {
        struct wined3d_format *format = &gl_info->formats[i];

        if (!format->glInternal) continue;

        if (format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)
        {
            FUNC2("Skipping format %s because it's a compressed format.\n",
                    FUNC5(format->id));
            continue;
        }

        if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
        {
            FUNC2("Checking if format %s is supported as FBO color attachment...\n", FUNC5(format->id));
            FUNC4(ctx, format);
        }
        else
        {
            format->rtInternal = format->glInternal;
        }
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
        gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
}