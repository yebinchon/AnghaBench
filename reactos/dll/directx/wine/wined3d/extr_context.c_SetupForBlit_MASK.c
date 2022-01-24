#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glColorMask ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glLoadIdentity ) () ;int /*<<< orphan*/  (* p_glMatrixMode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glTexEnvf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ;int /*<<< orphan*/  (* p_glTexEnvi ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {TYPE_3__ gl; } ;
struct TYPE_8__ {int textures; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_4__ gl_ops; TYPE_2__ limits; } ;
struct wined3d_device {int /*<<< orphan*/  shader_priv; TYPE_1__* shader_backend; } ;
struct wined3d_context {scalar_t__ blit_w; scalar_t__ blit_h; scalar_t__* rev_tex_unit_map; void* last_was_rhw; void* last_was_blit; struct wined3d_gl_info* gl_info; } ;
struct TYPE_11__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* shader_disable ) (int /*<<< orphan*/ ,struct wined3d_context*) ;} ;
typedef  TYPE_5__ SIZE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 size_t ARB_CLIP_CONTROL ; 
 size_t ARB_POINT_SPRITE ; 
 size_t ARB_SAMPLER_OBJECTS ; 
 size_t ARB_TEXTURE_CUBE_MAP ; 
 size_t ARB_TEXTURE_RECTANGLE ; 
 size_t EXT_SECONDARY_COLOR ; 
 size_t EXT_TEXTURE_LOD_BIAS ; 
 int /*<<< orphan*/  GL_ALPHA_TEST ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_COLOR_SUM_EXT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FOG ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_LOWER_LEFT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_NEGATIVE_ONE_TO_ONE ; 
 int /*<<< orphan*/  GL_POINT_SPRITE_ARB ; 
 int /*<<< orphan*/  GL_REPLACE ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  GL_TEXTURE ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_3D ; 
 int /*<<< orphan*/  GL_TEXTURE_CUBE_MAP_ARB ; 
 int /*<<< orphan*/  GL_TEXTURE_ENV ; 
 int /*<<< orphan*/  GL_TEXTURE_ENV_MODE ; 
 int /*<<< orphan*/  GL_TEXTURE_FILTER_CONTROL_EXT ; 
 int /*<<< orphan*/  GL_TEXTURE_LOD_BIAS_EXT ; 
 int /*<<< orphan*/  GL_TEXTURE_RECTANGLE_ARB ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int MAX_RENDER_TARGETS ; 
 scalar_t__ MAX_TEXTURES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  STATE_VDECL ; 
 int /*<<< orphan*/  STATE_VIEWPORT ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 void* TRUE ; 
 size_t WINED3D_GL_LEGACY_CONTEXT ; 
 int /*<<< orphan*/  WINED3D_RS_ALPHABLENDENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_ALPHATESTENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_CLIPPING ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  WINED3D_RS_CULLMODE ; 
 int /*<<< orphan*/  WINED3D_RS_FOGENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_LIGHTING ; 
 int /*<<< orphan*/  WINED3D_RS_POINTSPRITEENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SCISSORTESTENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SPECULARENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_STENCILENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_ZENABLE ; 
 int /*<<< orphan*/  WINED3D_TSS_COLOR_OP ; 
 scalar_t__ WINED3D_TS_PROJECTION ; 
 scalar_t__ WINED3D_TS_TEXTURE0 ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3D_UNMAPPED_STAGE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context*,struct wined3d_gl_info const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_context*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_gl_info const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC43(const struct wined3d_device *device, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    DWORD sampler;
    SIZE rt_size;
    int i;

    FUNC5("Setting up context %p for blitting\n", context);

    FUNC11(context, &rt_size);

    if (context->last_was_blit)
    {
        if (context->blit_w != rt_size.cx || context->blit_h != rt_size.cy)
        {
            FUNC16(gl_info, rt_size.cx, rt_size.cy);
            context->blit_w = rt_size.cx;
            context->blit_h = rt_size.cy;
            /* No need to dirtify here, the states are still dirtified because
             * they weren't applied since the last SetupForBlit() call. */
        }
        FUNC5("Context is already set up for blitting, nothing to do\n");
        return;
    }
    context->last_was_blit = TRUE;

    if (gl_info->supported[WINED3D_GL_LEGACY_CONTEXT])
    {
        /* Disable all textures. The caller can then bind a texture it wants to blit
         * from
         *
         * The blitting code uses (for now) the fixed function pipeline, so make sure to reset all fixed
         * function texture unit. No need to care for higher samplers
         */
        for (i = gl_info->limits.textures - 1; i > 0 ; --i)
        {
            sampler = context->rev_tex_unit_map[i];
            FUNC9(context, gl_info, i);

            if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
            {
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                FUNC8("glDisable GL_TEXTURE_CUBE_MAP_ARB");
            }
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
            FUNC8("glDisable GL_TEXTURE_3D");
            if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
            {
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                FUNC8("glDisable GL_TEXTURE_RECTANGLE_ARB");
            }
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
            FUNC8("glDisable GL_TEXTURE_2D");

            gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
            FUNC8("glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);");

            if (sampler != WINED3D_UNMAPPED_STAGE)
            {
                if (sampler < MAX_TEXTURES)
                    FUNC12(context, FUNC3(sampler, WINED3D_TSS_COLOR_OP));
                FUNC12(context, FUNC2(sampler));
            }
        }

        FUNC9(context, gl_info, 0);
        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
            FUNC8("glDisable GL_TEXTURE_CUBE_MAP_ARB");
        }
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
        FUNC8("glDisable GL_TEXTURE_3D");
        if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
            FUNC8("glDisable GL_TEXTURE_RECTANGLE_ARB");
        }
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
        FUNC8("glDisable GL_TEXTURE_2D");

        gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

        gl_info->gl_ops.gl.p_glMatrixMode(GL_TEXTURE);
        FUNC8("glMatrixMode(GL_TEXTURE)");
        gl_info->gl_ops.gl.p_glLoadIdentity();
        FUNC8("glLoadIdentity()");

        if (gl_info->supported[EXT_TEXTURE_LOD_BIAS])
        {
            gl_info->gl_ops.gl.p_glTexEnvf(GL_TEXTURE_FILTER_CONTROL_EXT,
                    GL_TEXTURE_LOD_BIAS_EXT, 0.0f);
            FUNC8("glTexEnvf GL_TEXTURE_LOD_BIAS_EXT ...");
        }

        /* Setup transforms */
        gl_info->gl_ops.gl.p_glMatrixMode(GL_MODELVIEW);
        FUNC8("glMatrixMode(GL_MODELVIEW)");
        gl_info->gl_ops.gl.p_glLoadIdentity();
        FUNC8("glLoadIdentity()");
        FUNC12(context, FUNC4(FUNC7(0)));

        /* Other misc states */
        gl_info->gl_ops.gl.p_glDisable(GL_ALPHA_TEST);
        FUNC8("glDisable(GL_ALPHA_TEST)");
        FUNC12(context, FUNC1(WINED3D_RS_ALPHATESTENABLE));
        gl_info->gl_ops.gl.p_glDisable(GL_LIGHTING);
        FUNC8("glDisable GL_LIGHTING");
        FUNC12(context, FUNC1(WINED3D_RS_LIGHTING));
        FUNC15(GL_FOG);
        FUNC8("glDisable GL_FOG");
        FUNC12(context, FUNC1(WINED3D_RS_FOGENABLE));
    }

    if (gl_info->supported[ARB_SAMPLER_OBJECTS])
        FUNC0(FUNC13(0, 0));
    FUNC9(context, gl_info, 0);

    sampler = context->rev_tex_unit_map[0];
    if (sampler != WINED3D_UNMAPPED_STAGE)
    {
        if (sampler < MAX_TEXTURES)
        {
            FUNC12(context, FUNC4(WINED3D_TS_TEXTURE0 + sampler));
            FUNC12(context, FUNC3(sampler, WINED3D_TSS_COLOR_OP));
        }
        FUNC12(context, FUNC2(sampler));
    }

    /* Other misc states */
    gl_info->gl_ops.gl.p_glDisable(GL_DEPTH_TEST);
    FUNC8("glDisable GL_DEPTH_TEST");
    FUNC12(context, FUNC1(WINED3D_RS_ZENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_BLEND);
    FUNC8("glDisable GL_BLEND");
    FUNC12(context, FUNC1(WINED3D_RS_ALPHABLENDENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_CULL_FACE);
    FUNC8("glDisable GL_CULL_FACE");
    FUNC12(context, FUNC1(WINED3D_RS_CULLMODE));
    gl_info->gl_ops.gl.p_glDisable(GL_STENCIL_TEST);
    FUNC8("glDisable GL_STENCIL_TEST");
    FUNC12(context, FUNC1(WINED3D_RS_STENCILENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_SCISSOR_TEST);
    FUNC8("glDisable GL_SCISSOR_TEST");
    FUNC12(context, FUNC1(WINED3D_RS_SCISSORTESTENABLE));
    if (gl_info->supported[ARB_POINT_SPRITE])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_POINT_SPRITE_ARB);
        FUNC8("glDisable GL_POINT_SPRITE_ARB");
        FUNC12(context, FUNC1(WINED3D_RS_POINTSPRITEENABLE));
    }
    gl_info->gl_ops.gl.p_glColorMask(GL_TRUE, GL_TRUE,GL_TRUE,GL_TRUE);
    FUNC8("glColorMask");
    for (i = 0; i < MAX_RENDER_TARGETS; ++i)
        FUNC12(context, FUNC1(FUNC6(i)));
    if (gl_info->supported[EXT_SECONDARY_COLOR])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_COLOR_SUM_EXT);
        FUNC12(context, FUNC1(WINED3D_RS_SPECULARENABLE));
        FUNC8("glDisable(GL_COLOR_SUM_EXT)");
    }

    context->last_was_rhw = TRUE;
    FUNC12(context, STATE_VDECL); /* because of last_was_rhw = TRUE */

    FUNC10(context, 0);
    FUNC12(context, FUNC1(WINED3D_RS_CLIPPING));

    /* FIXME: Make draw_textured_quad() able to work with a upper left origin. */
    if (gl_info->supported[ARB_CLIP_CONTROL])
        FUNC0(FUNC14(GL_LOWER_LEFT, GL_NEGATIVE_ONE_TO_ONE));

    FUNC16(gl_info, rt_size.cx, rt_size.cy);

    /* Disable shaders */
    device->shader_backend->shader_disable(device->shader_priv, context);

    context->blit_w = rt_size.cx;
    context->blit_h = rt_size.cy;
    FUNC12(context, STATE_VIEWPORT);
    FUNC12(context, FUNC4(WINED3D_TS_PROJECTION));
}