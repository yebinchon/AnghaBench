
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int dummy; } ;
struct wined3d_state {int ** sampler_states; struct wined3d_texture** textures; } ;
struct wined3d_context {int dummy; } ;


 size_t WINED3D_SAMP_SRGB_TEXTURE ;
 int wined3d_texture_load (struct wined3d_texture*,struct wined3d_context*,int ) ;

__attribute__((used)) static void context_preload_texture(struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int idx)
{
    struct wined3d_texture *texture;

    if (!(texture = state->textures[idx]))
        return;

    wined3d_texture_load(texture, context, state->sampler_states[idx][WINED3D_SAMP_SRGB_TEXTURE]);
}
