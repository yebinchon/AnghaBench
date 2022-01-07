
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_state {int** texture_states; TYPE_5__** textures; int * transforms; } ;
struct wined3d_matrix {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {int shader_priv; TYPE_4__* shader_backend; } ;
struct TYPE_8__ {unsigned int use_map; TYPE_2__* elements; } ;
struct wined3d_context {unsigned int lastWasPow2Texture; TYPE_3__ stream_info; int last_was_rhw; struct wined3d_gl_info* gl_info; struct wined3d_device* device; } ;
struct TYPE_10__ {scalar_t__ pow2_matrix; } ;
struct TYPE_9__ {int (* shader_has_ffp_proj_control ) (int ) ;} ;
struct TYPE_7__ {TYPE_1__* format; } ;
struct TYPE_6__ {int id; } ;
typedef int BOOL ;


 int FIXME (char*) ;
 scalar_t__ MAX_TEXTURES ;
 int TRACE (char*) ;
 int WINED3DFMT_UNKNOWN ;
 int WINED3DTSS_TCI_PASSTHRU ;
 unsigned int WINED3D_FFP_TEXCOORD0 ;
 size_t WINED3D_TSS_TEXCOORD_INDEX ;
 size_t WINED3D_TSS_TEXTURE_TRANSFORM_FLAGS ;
 unsigned int WINED3D_TS_TEXTURE0 ;
 int compute_texture_matrix (struct wined3d_gl_info const*,int *,int,int,int ,int ,int ,struct wined3d_matrix*) ;
 unsigned int min (int,scalar_t__) ;
 int multiply_matrix (struct wined3d_matrix*,struct wined3d_matrix*,struct wined3d_matrix*) ;
 int stub1 (int ) ;
 int use_ps (struct wined3d_state const*) ;

void get_texture_matrix(const struct wined3d_context *context, const struct wined3d_state *state,
        unsigned int tex, struct wined3d_matrix *mat)
{
    const struct wined3d_device *device = context->device;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL generated = (state->texture_states[tex][WINED3D_TSS_TEXCOORD_INDEX] & 0xffff0000)
            != WINED3DTSS_TCI_PASSTHRU;
    unsigned int coord_idx = min(state->texture_states[tex][WINED3D_TSS_TEXCOORD_INDEX & 0x0000ffff],
            MAX_TEXTURES - 1);

    compute_texture_matrix(gl_info, &state->transforms[WINED3D_TS_TEXTURE0 + tex],
            state->texture_states[tex][WINED3D_TSS_TEXTURE_TRANSFORM_FLAGS],
            generated, context->last_was_rhw,
            context->stream_info.use_map & (1u << (WINED3D_FFP_TEXCOORD0 + coord_idx))
            ? context->stream_info.elements[WINED3D_FFP_TEXCOORD0 + coord_idx].format->id
            : WINED3DFMT_UNKNOWN,
            device->shader_backend->shader_has_ffp_proj_control(device->shader_priv), mat);

    if ((context->lastWasPow2Texture & (1u << tex)) && state->textures[tex])
    {
        if (generated)
            FIXME("Non-power-of-two texture being used with generated texture coords.\n");


        if (!use_ps(state))
        {
            TRACE("Non-power-of-two texture matrix multiply fixup.\n");
            multiply_matrix(mat, mat, (struct wined3d_matrix *)state->textures[tex]->pow2_matrix);
        }
    }
}
