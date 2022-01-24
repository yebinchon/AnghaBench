#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {unsigned int combined_samplers; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLint ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int WINED3D_UNMAPPED_STAGE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 struct wined3d_string_buffer* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*,char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC9(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, const char *prefix,
        unsigned int base, unsigned int count, const DWORD *tex_unit_map)
{
    struct wined3d_string_buffer *sampler_name = FUNC6(&priv->string_buffers);
    unsigned int i, mapped_unit;
    GLint name_loc;

    for (i = 0; i < count; ++i)
    {
        FUNC8(sampler_name, "%s_sampler%u", prefix, i);
        name_loc = FUNC1(FUNC4(program_id, sampler_name->buffer));
        if (name_loc == -1)
            continue;

        mapped_unit = tex_unit_map ? tex_unit_map[base + i] : base + i;
        if (mapped_unit == WINED3D_UNMAPPED_STAGE || mapped_unit >= gl_info->limits.combined_samplers)
        {
            FUNC0("Trying to load sampler %s on unsupported unit %u.\n", sampler_name->buffer, mapped_unit);
            continue;
        }

        FUNC2("Loading sampler %s on unit %u.\n", sampler_name->buffer, mapped_unit);
        FUNC1(FUNC5(name_loc, mapped_unit));
    }
    FUNC3("Load sampler bindings");
    FUNC7(&priv->string_buffers, sampler_name);
}