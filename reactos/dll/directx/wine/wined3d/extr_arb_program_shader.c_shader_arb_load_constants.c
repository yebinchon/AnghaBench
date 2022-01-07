
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int shader_arb_load_constants_internal (void*,struct wined3d_context*,struct wined3d_state const*,int ,int ,int ) ;
 int use_ps (struct wined3d_state const*) ;
 int use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void shader_arb_load_constants(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    BOOL vs = use_vs(state);
    BOOL ps = use_ps(state);

    shader_arb_load_constants_internal(shader_priv, context, state, ps, vs, FALSE);
}
