#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int color_key_flags; } ;
struct TYPE_8__ {unsigned int format_flags; int /*<<< orphan*/  bind_count; struct wined3d_format* format; } ;
struct wined3d_texture {size_t sampler; scalar_t__ target; TYPE_5__ async; TYPE_2__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int /*<<< orphan*/  color_fixup; } ;
struct TYPE_10__ {size_t ffp_blend_stages; } ;
struct wined3d_d3d_info {TYPE_4__ limits; } ;
struct wined3d_cs_set_texture {size_t stage; struct wined3d_texture* texture; } ;
struct TYPE_9__ {struct wined3d_texture** textures; } ;
struct wined3d_cs {TYPE_6__* device; TYPE_3__ state; } ;
struct TYPE_12__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {struct wined3d_d3d_info d3d_info; struct wined3d_gl_info gl_info; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int MAX_COMBINED_SAMPLERS ; 
 int /*<<< orphan*/  STATE_COLOR_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ TRUE ; 
 unsigned int WINED3DFMT_FLAG_SHADOW ; 
 int WINED3D_CKEY_SRC_BLT ; 
 int /*<<< orphan*/  WINED3D_RS_COLORKEYENABLE ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  WINED3D_TSS_ALPHA_OP ; 
 int /*<<< orphan*/  WINED3D_TSS_COLOR_OP ; 
 scalar_t__ FUNC7 (struct wined3d_gl_info const*,struct wined3d_format const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_gl_info *gl_info = &cs->device->adapter->gl_info;
    const struct wined3d_d3d_info *d3d_info = &cs->device->adapter->d3d_info;
    const struct wined3d_cs_set_texture *op = data;
    struct wined3d_texture *prev;
    BOOL old_use_color_key = FALSE, new_use_color_key = FALSE;

    prev = cs->state.textures[op->stage];
    cs->state.textures[op->stage] = op->texture;

    if (op->texture)
    {
        const struct wined3d_format *new_format = op->texture->resource.format;
        const struct wined3d_format *old_format = prev ? prev->resource.format : NULL;
        unsigned int old_fmt_flags = prev ? prev->resource.format_flags : 0;
        unsigned int new_fmt_flags = op->texture->resource.format_flags;

        if (FUNC1(&op->texture->resource.bind_count) == 1)
            op->texture->sampler = op->stage;

        if (!prev || op->texture->target != prev->target
                || (!FUNC9(new_format->color_fixup, old_format->color_fixup)
                && !(FUNC7(gl_info, new_format) && FUNC7(gl_info, old_format)))
                || (new_fmt_flags & WINED3DFMT_FLAG_SHADOW) != (old_fmt_flags & WINED3DFMT_FLAG_SHADOW))
            FUNC8(cs->device, FUNC4(WINED3D_SHADER_TYPE_PIXEL));

        if (!prev && op->stage < d3d_info->limits.ffp_blend_stages)
        {
            /* The source arguments for color and alpha ops have different
             * meanings when a NULL texture is bound, so the COLOR_OP and
             * ALPHA_OP have to be dirtified. */
            FUNC8(cs->device, FUNC5(op->stage, WINED3D_TSS_COLOR_OP));
            FUNC8(cs->device, FUNC5(op->stage, WINED3D_TSS_ALPHA_OP));
        }

        if (!op->stage && op->texture->async.color_key_flags & WINED3D_CKEY_SRC_BLT)
            new_use_color_key = TRUE;
    }

    if (prev)
    {
        if (FUNC0(&prev->resource.bind_count) && prev->sampler == op->stage)
        {
            unsigned int i;

            /* Search for other stages the texture is bound to. Shouldn't
             * happen if applications bind textures to a single stage only. */
            FUNC6("Searching for other stages the texture is bound to.\n");
            for (i = 0; i < MAX_COMBINED_SAMPLERS; ++i)
            {
                if (cs->state.textures[i] == prev)
                {
                    FUNC6("Texture is also bound to stage %u.\n", i);
                    prev->sampler = i;
                    break;
                }
            }
        }

        if (!op->texture && op->stage < d3d_info->limits.ffp_blend_stages)
        {
            FUNC8(cs->device, FUNC5(op->stage, WINED3D_TSS_COLOR_OP));
            FUNC8(cs->device, FUNC5(op->stage, WINED3D_TSS_ALPHA_OP));
        }

        if (!op->stage && prev->async.color_key_flags & WINED3D_CKEY_SRC_BLT)
            old_use_color_key = TRUE;
    }

    FUNC8(cs->device, FUNC3(op->stage));

    if (new_use_color_key != old_use_color_key)
        FUNC8(cs->device, FUNC2(WINED3D_RS_COLORKEYENABLE));

    if (new_use_color_key)
        FUNC8(cs->device, STATE_COLOR_KEY);
}