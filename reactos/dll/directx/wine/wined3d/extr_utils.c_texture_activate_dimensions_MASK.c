#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_texture {int target; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* p_glDisable ) (int const) ;int /*<<< orphan*/  (* p_glEnable ) (int const) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; scalar_t__* supported; } ;

/* Variables and functions */
 size_t ARB_TEXTURE_CUBE_MAP ; 
 size_t ARB_TEXTURE_RECTANGLE ; 
#define  GL_TEXTURE_1D 132 
#define  GL_TEXTURE_2D 131 
#define  GL_TEXTURE_3D 130 
#define  GL_TEXTURE_CUBE_MAP_ARB 129 
#define  GL_TEXTURE_RECTANGLE_ARB 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int const) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int const) ; 
 int /*<<< orphan*/  FUNC14 (int const) ; 
 int /*<<< orphan*/  FUNC15 (int const) ; 
 int /*<<< orphan*/  FUNC16 (int const) ; 
 int /*<<< orphan*/  FUNC17 (int const) ; 
 int /*<<< orphan*/  FUNC18 (int const) ; 
 int /*<<< orphan*/  FUNC19 (int const) ; 
 int /*<<< orphan*/  FUNC20 (int const) ; 
 int /*<<< orphan*/  FUNC21 (int const) ; 
 int /*<<< orphan*/  FUNC22 (int const) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int const) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int const) ; 
 int /*<<< orphan*/  FUNC27 (int const) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

void FUNC31(const struct wined3d_texture *texture, const struct wined3d_gl_info *gl_info)
{
    if (texture)
    {
        switch (texture->target)
        {
            case GL_TEXTURE_1D:
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
                FUNC0("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
                FUNC0("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                    FUNC0("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                    FUNC0("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_1D);
                FUNC0("glEnable(GL_TEXTURE_1D)");
                break;
            case GL_TEXTURE_2D:
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_1D);
                FUNC0("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
                FUNC0("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                    FUNC0("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                    FUNC0("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_2D);
                FUNC0("glEnable(GL_TEXTURE_2D)");
                break;
            case GL_TEXTURE_RECTANGLE_ARB:
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_1D);
                FUNC0("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
                FUNC0("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
                FUNC0("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                    FUNC0("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_RECTANGLE_ARB);
                FUNC0("glEnable(GL_TEXTURE_RECTANGLE_ARB)");
                break;
            case GL_TEXTURE_3D:
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                    FUNC0("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                    FUNC0("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_1D);
                FUNC0("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
                FUNC0("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_3D);
                FUNC0("glEnable(GL_TEXTURE_3D)");
                break;
            case GL_TEXTURE_CUBE_MAP_ARB:
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_1D);
                FUNC0("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
                FUNC0("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
                FUNC0("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                    FUNC0("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_CUBE_MAP_ARB);
                FUNC0("glEnable(GL_TEXTURE_CUBE_MAP_ARB)");
              break;
        }
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_1D);
        FUNC0("glDisable(GL_TEXTURE_1D)");
        gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_2D);
        FUNC0("glEnable(GL_TEXTURE_2D)");
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
        FUNC0("glDisable(GL_TEXTURE_3D)");
        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
            FUNC0("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
        }
        if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
            FUNC0("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
        }
        /* Binding textures is done by samplers. A dummy texture will be bound */
    }
}