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
struct wined3d_shader {struct glsl_shader_private* backend_data; } ;
struct wined3d_context {int dummy; } ;
struct shader_glsl_priv {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cs; } ;
struct glsl_shader_private {TYPE_2__ gl_shaders; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_shader*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct wined3d_shader*) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_glsl_priv*,struct wined3d_context const*,struct wined3d_shader*) ; 

__attribute__((used)) static GLuint FUNC4(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, struct wined3d_shader *shader)
{
    struct glsl_shader_private *shader_data;

    if (!shader->backend_data)
    {
        FUNC2("Failed to find GLSL program for compute shader %p.\n", shader);
        if (FUNC1(FUNC3(priv, context, shader)))
        {
            FUNC0("Failed to compile compute shader %p.\n", shader);
            return 0;
        }
    }
    shader_data = shader->backend_data;
    return shader_data->gl_shaders.cs[0].id;
}