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
struct TYPE_3__ {int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glEnable ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_SHADER_NV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_gl_info const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_gl_info *gl_info, BOOL enable)
{
    FUNC1(gl_info, enable);
    if (enable)
    {
        gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_SHADER_NV);
        FUNC0("glEnable(GL_TEXTURE_SHADER_NV)");
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_SHADER_NV);
        FUNC0("glDisable(GL_TEXTURE_SHADER_NV)");
    }
}