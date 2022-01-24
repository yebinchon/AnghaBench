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
struct wined3d_state {int /*<<< orphan*/ * textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct atifs_private_data* fragment_priv; } ;
struct TYPE_4__ {unsigned int ffp_blend_stages; } ;
struct wined3d_d3d_info {TYPE_1__ limits; } ;
struct wined3d_context {scalar_t__* tex_unit_map; struct atifs_context_private_data* fragment_pipe_data; struct wined3d_d3d_info* d3d_info; struct wined3d_gl_info* gl_info; struct wined3d_device* device; } ;
struct ffp_frag_settings {TYPE_2__* op; } ;
struct atifs_private_data {int /*<<< orphan*/  fragment_shaders; } ;
struct TYPE_6__ {struct ffp_frag_settings settings; } ;
typedef  struct atifs_ffp_desc {unsigned int num_textures_used; int* constants; int /*<<< orphan*/  shader; TYPE_3__ parent; } const atifs_ffp_desc ;
struct atifs_context_private_data {struct atifs_ffp_desc const* last_shader; } ;
struct TYPE_5__ {scalar_t__ cop; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
#define  ATIFS_CONSTANT_BUMP 130 
#define  ATIFS_CONSTANT_STAGE 129 
#define  ATIFS_CONSTANT_TFACTOR 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_TEXTURES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct atifs_ffp_desc const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WINED3D_RS_TEXTUREFACTOR ; 
 scalar_t__ WINED3D_TOP_DISABLE ; 
 int /*<<< orphan*/  WINED3D_TSS_BUMPENV_MAT00 ; 
 int /*<<< orphan*/  WINED3D_TSS_CONSTANT ; 
 scalar_t__ WINED3D_UNMAPPED_STAGE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_context*,struct wined3d_gl_info const*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct ffp_frag_settings*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct wined3d_gl_info const*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_context*,struct wined3d_state const*,struct ffp_frag_settings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct atifs_ffp_desc const* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC16(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_device *device = context->device;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_d3d_info *d3d_info = context->d3d_info;
    struct atifs_context_private_data *ctx_priv = context->fragment_pipe_data;
    const struct atifs_ffp_desc *desc, *last_shader = ctx_priv->last_shader;
    struct ffp_frag_settings settings;
    struct atifs_private_data *priv = device->fragment_priv;
    DWORD mapped_stage;
    unsigned int i;

    FUNC11(context, state, &settings, TRUE);
    desc = (const struct atifs_ffp_desc *)FUNC9(&priv->fragment_shaders, &settings);
    if (!desc)
    {
        struct atifs_ffp_desc *new_desc;

        if (!(new_desc = FUNC13(sizeof(*new_desc))))
        {
            FUNC0("Out of memory\n");
            return;
        }
        new_desc->num_textures_used = 0;
        for (i = 0; i < d3d_info->limits.ffp_blend_stages; ++i)
        {
            if (settings.op[i].cop == WINED3D_TOP_DISABLE)
                break;
            ++new_desc->num_textures_used;
        }

        new_desc->parent.settings = settings;
        new_desc->shader = FUNC10(settings.op, gl_info, new_desc->constants);
        FUNC5(&priv->fragment_shaders, &new_desc->parent);
        FUNC4("Allocated fixed function replacement shader descriptor %p.\n", new_desc);
        desc = new_desc;
    }

    /* GL_ATI_fragment_shader depends on the GL_TEXTURE_xD enable settings. Update the texture stages
     * used by this shader
     */
    for (i = 0; i < desc->num_textures_used; ++i)
    {
        mapped_stage = context->tex_unit_map[i];
        if (mapped_stage != WINED3D_UNMAPPED_STAGE)
        {
            FUNC8(context, gl_info, mapped_stage);
            FUNC15(state->textures[i], gl_info);
        }
    }

    FUNC1(FUNC12(desc->shader));
    ctx_priv->last_shader = desc;

    for (i = 0; i < MAX_TEXTURES; i++)
    {
        if (last_shader && last_shader->constants[i] == desc->constants[i])
            continue;

        switch (desc->constants[i])
        {
            case ATIFS_CONSTANT_BUMP:
                FUNC14(context, state, FUNC3(i, WINED3D_TSS_BUMPENV_MAT00));
                break;

            case ATIFS_CONSTANT_TFACTOR:
                FUNC7(context, state, FUNC2(WINED3D_RS_TEXTUREFACTOR));
                break;

            case ATIFS_CONSTANT_STAGE:
                FUNC6(context, state, FUNC3(i, WINED3D_TSS_CONSTANT));
                break;

            default:
                FUNC0("Unexpected constant type %u.\n", desc->constants[i]);
        }
    }
}