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
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_2__ shader_version; } ;
struct wined3d_shader {struct arb_vshader_private* backend_data; TYPE_3__ reg_maps; struct wined3d_device* device; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
struct wined3d_context {int dummy; } ;
struct arb_vshader_private {size_t num_gl_shaders; struct arb_vshader_private* gl_shaders; int /*<<< orphan*/  prgId; } ;
struct arb_pshader_private {size_t num_gl_shaders; struct arb_pshader_private* gl_shaders; int /*<<< orphan*/  prgId; } ;
typedef  size_t UINT ;
struct TYPE_4__ {struct wined3d_gl_info gl_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wined3d_context* FUNC2 (struct wined3d_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct arb_vshader_private*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wined3d_shader *shader)
{
    struct wined3d_device *device = shader->device;
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;

    if (FUNC6(shader->reg_maps.shader_version.type))
    {
        struct arb_pshader_private *shader_data = shader->backend_data;
        UINT i;

        if(!shader_data) return; /* This can happen if a shader was never compiled */

        if (shader_data->num_gl_shaders)
        {
            struct wined3d_context *context = FUNC2(device, NULL, 0);

            for (i = 0; i < shader_data->num_gl_shaders; ++i)
            {
                FUNC0(FUNC4(1, &shader_data->gl_shaders[i].prgId));
                FUNC1("GL_EXTCALL(glDeleteProgramsARB(1, &shader_data->gl_shaders[i].prgId))");
            }

            FUNC3(context);
        }

        FUNC5(shader_data->gl_shaders);
        FUNC5(shader_data);
        shader->backend_data = NULL;
    }
    else
    {
        struct arb_vshader_private *shader_data = shader->backend_data;
        UINT i;

        if(!shader_data) return; /* This can happen if a shader was never compiled */

        if (shader_data->num_gl_shaders)
        {
            struct wined3d_context *context = FUNC2(device, NULL, 0);

            for (i = 0; i < shader_data->num_gl_shaders; ++i)
            {
                FUNC0(FUNC4(1, &shader_data->gl_shaders[i].prgId));
                FUNC1("GL_EXTCALL(glDeleteProgramsARB(1, &shader_data->gl_shaders[i].prgId))");
            }

            FUNC3(context);
        }

        FUNC5(shader_data->gl_shaders);
        FUNC5(shader_data);
        shader->backend_data = NULL;
    }
}