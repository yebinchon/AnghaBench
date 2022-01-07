
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int color_key_flags; } ;
struct TYPE_8__ {unsigned int format_flags; int bind_count; struct wined3d_format* format; } ;
struct wined3d_texture {size_t sampler; scalar_t__ target; TYPE_5__ async; TYPE_2__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int color_fixup; } ;
struct TYPE_10__ {size_t ffp_blend_stages; } ;
struct wined3d_d3d_info {TYPE_4__ limits; } ;
struct wined3d_cs_set_texture {size_t stage; struct wined3d_texture* texture; } ;
struct TYPE_9__ {struct wined3d_texture** textures; } ;
struct wined3d_cs {TYPE_6__* device; TYPE_3__ state; } ;
struct TYPE_12__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {struct wined3d_d3d_info d3d_info; struct wined3d_gl_info gl_info; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 unsigned int MAX_COMBINED_SAMPLERS ;
 int STATE_COLOR_KEY ;
 int STATE_RENDER (int ) ;
 int STATE_SAMPLER (size_t) ;
 int STATE_SHADER (int ) ;
 int STATE_TEXTURESTAGE (size_t,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 unsigned int WINED3DFMT_FLAG_SHADOW ;
 int WINED3D_CKEY_SRC_BLT ;
 int WINED3D_RS_COLORKEYENABLE ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int WINED3D_TSS_ALPHA_OP ;
 int WINED3D_TSS_COLOR_OP ;
 scalar_t__ can_use_texture_swizzle (struct wined3d_gl_info const*,struct wined3d_format const*) ;
 int device_invalidate_state (TYPE_6__*,int ) ;
 int is_same_fixup (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_texture(struct wined3d_cs *cs, const void *data)
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
        const struct wined3d_format *old_format = prev ? prev->resource.format : ((void*)0);
        unsigned int old_fmt_flags = prev ? prev->resource.format_flags : 0;
        unsigned int new_fmt_flags = op->texture->resource.format_flags;

        if (InterlockedIncrement(&op->texture->resource.bind_count) == 1)
            op->texture->sampler = op->stage;

        if (!prev || op->texture->target != prev->target
                || (!is_same_fixup(new_format->color_fixup, old_format->color_fixup)
                && !(can_use_texture_swizzle(gl_info, new_format) && can_use_texture_swizzle(gl_info, old_format)))
                || (new_fmt_flags & WINED3DFMT_FLAG_SHADOW) != (old_fmt_flags & WINED3DFMT_FLAG_SHADOW))
            device_invalidate_state(cs->device, STATE_SHADER(WINED3D_SHADER_TYPE_PIXEL));

        if (!prev && op->stage < d3d_info->limits.ffp_blend_stages)
        {



            device_invalidate_state(cs->device, STATE_TEXTURESTAGE(op->stage, WINED3D_TSS_COLOR_OP));
            device_invalidate_state(cs->device, STATE_TEXTURESTAGE(op->stage, WINED3D_TSS_ALPHA_OP));
        }

        if (!op->stage && op->texture->async.color_key_flags & WINED3D_CKEY_SRC_BLT)
            new_use_color_key = TRUE;
    }

    if (prev)
    {
        if (InterlockedDecrement(&prev->resource.bind_count) && prev->sampler == op->stage)
        {
            unsigned int i;



            TRACE("Searching for other stages the texture is bound to.\n");
            for (i = 0; i < MAX_COMBINED_SAMPLERS; ++i)
            {
                if (cs->state.textures[i] == prev)
                {
                    TRACE("Texture is also bound to stage %u.\n", i);
                    prev->sampler = i;
                    break;
                }
            }
        }

        if (!op->texture && op->stage < d3d_info->limits.ffp_blend_stages)
        {
            device_invalidate_state(cs->device, STATE_TEXTURESTAGE(op->stage, WINED3D_TSS_COLOR_OP));
            device_invalidate_state(cs->device, STATE_TEXTURESTAGE(op->stage, WINED3D_TSS_ALPHA_OP));
        }

        if (!op->stage && prev->async.color_key_flags & WINED3D_CKEY_SRC_BLT)
            old_use_color_key = TRUE;
    }

    device_invalidate_state(cs->device, STATE_SAMPLER(op->stage));

    if (new_use_color_key != old_use_color_key)
        device_invalidate_state(cs->device, STATE_RENDER(WINED3D_RS_COLORKEYENABLE));

    if (new_use_color_key)
        device_invalidate_state(cs->device, STATE_COLOR_KEY);
}
