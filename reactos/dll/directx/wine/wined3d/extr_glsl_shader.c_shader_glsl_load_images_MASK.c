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
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {TYPE_1__* uav_resource_info; TYPE_2__ shader_version; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_UNORDERED_ACCESS_VIEWS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wined3d_gl_info const*) ; 
 struct wined3d_string_buffer* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_string_buffer*,char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC10(const struct wined3d_gl_info *gl_info, struct shader_glsl_priv *priv,
        GLuint program_id, const struct wined3d_shader_reg_maps *reg_maps)
{
    const char *prefix = FUNC5(reg_maps->shader_version.type);
    struct wined3d_string_buffer *name;
    GLint location;
    unsigned int i;

    if (FUNC6(gl_info))
        return;

    name = FUNC7(&priv->string_buffers);
    for (i = 0; i < MAX_UNORDERED_ACCESS_VIEWS; ++i)
    {
        if (!reg_maps->uav_resource_info[i].type)
            continue;

        FUNC9(name, "%s_image%u", prefix, i);
        location = FUNC0(FUNC3(program_id, name->buffer));
        if (location == -1)
            continue;

        FUNC1("Loading image %s on unit %u.\n", name->buffer, i);
        FUNC0(FUNC4(location, i));
    }
    FUNC2("Load image bindings");
    FUNC8(&priv->string_buffers, name);
}