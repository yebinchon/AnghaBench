
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int flags; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_context {unsigned int lastWasPow2Texture; int constant_update_mask; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t MAX_TEXTURES ;
 size_t STATE_SAMPLER (int ) ;
 int WINED3D_SHADER_CONST_FFP_TEXMATRIX ;
 int WINED3D_TEXTURE_POW2_MAT_IDENT ;

__attribute__((used)) static void glsl_vertex_pipe_texmatrix_np2(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    DWORD sampler = state_id - STATE_SAMPLER(0);
    const struct wined3d_texture *texture = state->textures[sampler];
    BOOL np2;

    if (!texture)
        return;

    if (sampler >= MAX_TEXTURES)
        return;

    if ((np2 = !(texture->flags & WINED3D_TEXTURE_POW2_MAT_IDENT))
            || context->lastWasPow2Texture & (1u << sampler))
    {
        if (np2)
            context->lastWasPow2Texture |= 1u << sampler;
        else
            context->lastWasPow2Texture &= ~(1u << sampler);

        context->constant_update_mask |= WINED3D_SHADER_CONST_FFP_TEXMATRIX;
    }
}
