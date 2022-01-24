#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_string_buffer {char* buffer; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
struct glsl_ps_program {void* color_key_location; void* ycorrection_location; void* np2_fixup_location; void* alpha_test_ref_location; void* fog_scale_location; void* fog_end_location; void* fog_density_location; void* fog_color_location; void* specular_enable_location; void* tex_factor_location; void** tss_constant_location; void** bumpenv_lum_offset_location; void** bumpenv_lum_scale_location; void** bumpenv_mat_location; void** uniform_b_locations; void** uniform_i_locations; void** uniform_f_locations; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_TEXTURES ; 
 unsigned int WINED3D_MAX_CONSTS_B ; 
 unsigned int WINED3D_MAX_CONSTS_I ; 
 unsigned int WINED3D_MAX_PS_CONSTS_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void**,int,unsigned int) ; 
 struct wined3d_string_buffer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_string_buffer*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, struct glsl_ps_program *ps, unsigned int ps_c_count)
{
    unsigned int i;
    struct wined3d_string_buffer *name = FUNC3(&priv->string_buffers);

    for (i = 0; i < ps_c_count; ++i)
    {
        FUNC5(name, "ps_c[%u]", i);
        ps->uniform_f_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }
    FUNC2(&ps->uniform_f_locations[ps_c_count], 0xff, (WINED3D_MAX_PS_CONSTS_F - ps_c_count) * sizeof(GLuint));

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        FUNC5(name, "ps_i[%u]", i);
        ps->uniform_i_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_B; ++i)
    {
        FUNC5(name, "ps_b[%u]", i);
        ps->uniform_b_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }

    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        FUNC5(name, "bumpenv_mat%u", i);
        ps->bumpenv_mat_location[i] = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "bumpenv_lum_scale%u", i);
        ps->bumpenv_lum_scale_location[i] = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "bumpenv_lum_offset%u", i);
        ps->bumpenv_lum_offset_location[i] = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "tss_const%u", i);
        ps->tss_constant_location[i] = FUNC0(FUNC1(program_id, name->buffer));
    }

    ps->tex_factor_location = FUNC0(FUNC1(program_id, "tex_factor"));
    ps->specular_enable_location = FUNC0(FUNC1(program_id, "specular_enable"));

    ps->fog_color_location = FUNC0(FUNC1(program_id, "ffp_fog.color"));
    ps->fog_density_location = FUNC0(FUNC1(program_id, "ffp_fog.density"));
    ps->fog_end_location = FUNC0(FUNC1(program_id, "ffp_fog.end"));
    ps->fog_scale_location = FUNC0(FUNC1(program_id, "ffp_fog.scale"));

    ps->alpha_test_ref_location = FUNC0(FUNC1(program_id, "alpha_test_ref"));

    ps->np2_fixup_location = FUNC0(FUNC1(program_id, "ps_samplerNP2Fixup"));
    ps->ycorrection_location = FUNC0(FUNC1(program_id, "ycorrection"));
    ps->color_key_location = FUNC0(FUNC1(program_id, "color_key"));

    FUNC4(&priv->string_buffers, name);
}