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
struct wined3d_string_buffer {char* buffer; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; } ;
struct glsl_vs_program {void* clip_planes_location; void* pointsize_q_att_location; void* pointsize_l_att_location; void* pointsize_c_att_location; void* pointsize_max_location; void* pointsize_min_location; void* pointsize_location; TYPE_1__* light_location; void* light_ambient_location; void* material_shininess_location; void* material_emissive_location; void* material_specular_location; void* material_diffuse_location; void* material_ambient_location; void** texture_matrix_location; void* projection_matrix_location; void** normal_matrix_location; void** modelview_matrix_location; void* pos_fixup_location; void** uniform_b_locations; void** uniform_i_locations; void** uniform_f_locations; } ;
struct TYPE_2__ {void* cos_hphi; void* cos_htheta; void* q_att; void* l_att; void* c_att; void* falloff; void* range; void* direction; void* position; void* ambient; void* specular; void* diffuse; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_ACTIVE_LIGHTS ; 
 unsigned int MAX_TEXTURES ; 
 unsigned int MAX_VERTEX_INDEX_BLENDS ; 
 unsigned int WINED3D_MAX_CONSTS_B ; 
 unsigned int WINED3D_MAX_CONSTS_I ; 
 unsigned int WINED3D_MAX_VS_CONSTS_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void**,int,unsigned int) ; 
 struct wined3d_string_buffer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_string_buffer*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, struct glsl_vs_program *vs, unsigned int vs_c_count)
{
    unsigned int i;
    struct wined3d_string_buffer *name = FUNC3(&priv->string_buffers);

    for (i = 0; i < vs_c_count; ++i)
    {
        FUNC5(name, "vs_c[%u]", i);
        vs->uniform_f_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }
    FUNC2(&vs->uniform_f_locations[vs_c_count], 0xff, (WINED3D_MAX_VS_CONSTS_F - vs_c_count) * sizeof(GLuint));

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        FUNC5(name, "vs_i[%u]", i);
        vs->uniform_i_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_B; ++i)
    {
        FUNC5(name, "vs_b[%u]", i);
        vs->uniform_b_locations[i] = FUNC0(FUNC1(program_id, name->buffer));
    }

    vs->pos_fixup_location = FUNC0(FUNC1(program_id, "pos_fixup"));

    for (i = 0; i < MAX_VERTEX_INDEX_BLENDS; ++i)
    {
        FUNC5(name, "ffp_modelview_matrix[%u]", i);
        vs->modelview_matrix_location[i] = FUNC0(FUNC1(program_id, name->buffer));
    }
    for (i = 0; i < MAX_VERTEX_INDEX_BLENDS; ++i)
    {
        FUNC5(name, "ffp_normal_matrix[%u]", i);
        vs->normal_matrix_location[i] = FUNC0(FUNC1(program_id, name->buffer));
    }
    vs->projection_matrix_location = FUNC0(FUNC1(program_id, "ffp_projection_matrix"));
    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        FUNC5(name, "ffp_texture_matrix[%u]", i);
        vs->texture_matrix_location[i] = FUNC0(FUNC1(program_id, name->buffer));
    }
    vs->material_ambient_location = FUNC0(FUNC1(program_id, "ffp_material.ambient"));
    vs->material_diffuse_location = FUNC0(FUNC1(program_id, "ffp_material.diffuse"));
    vs->material_specular_location = FUNC0(FUNC1(program_id, "ffp_material.specular"));
    vs->material_emissive_location = FUNC0(FUNC1(program_id, "ffp_material.emissive"));
    vs->material_shininess_location = FUNC0(FUNC1(program_id, "ffp_material.shininess"));
    vs->light_ambient_location = FUNC0(FUNC1(program_id, "ffp_light_ambient"));
    for (i = 0; i < MAX_ACTIVE_LIGHTS; ++i)
    {
        FUNC5(name, "ffp_light[%u].diffuse", i);
        vs->light_location[i].diffuse = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].specular", i);
        vs->light_location[i].specular = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].ambient", i);
        vs->light_location[i].ambient = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].position", i);
        vs->light_location[i].position = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].direction", i);
        vs->light_location[i].direction = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].range", i);
        vs->light_location[i].range = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].falloff", i);
        vs->light_location[i].falloff = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].c_att", i);
        vs->light_location[i].c_att = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].l_att", i);
        vs->light_location[i].l_att = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].q_att", i);
        vs->light_location[i].q_att = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].cos_htheta", i);
        vs->light_location[i].cos_htheta = FUNC0(FUNC1(program_id, name->buffer));
        FUNC5(name, "ffp_light[%u].cos_hphi", i);
        vs->light_location[i].cos_hphi = FUNC0(FUNC1(program_id, name->buffer));
    }
    vs->pointsize_location = FUNC0(FUNC1(program_id, "ffp_point.size"));
    vs->pointsize_min_location = FUNC0(FUNC1(program_id, "ffp_point.size_min"));
    vs->pointsize_max_location = FUNC0(FUNC1(program_id, "ffp_point.size_max"));
    vs->pointsize_c_att_location = FUNC0(FUNC1(program_id, "ffp_point.c_att"));
    vs->pointsize_l_att_location = FUNC0(FUNC1(program_id, "ffp_point.l_att"));
    vs->pointsize_q_att_location = FUNC0(FUNC1(program_id, "ffp_point.q_att"));
    vs->clip_planes_location = FUNC0(FUNC1(program_id, "clip_planes"));

    FUNC4(&priv->string_buffers, name);
}