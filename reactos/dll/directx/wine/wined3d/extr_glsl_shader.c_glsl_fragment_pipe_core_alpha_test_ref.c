
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int constant_update_mask; } ;
typedef int DWORD ;


 int WINED3D_SHADER_CONST_PS_ALPHA_TEST ;

__attribute__((used)) static void glsl_fragment_pipe_core_alpha_test_ref(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    context->constant_update_mask |= WINED3D_SHADER_CONST_PS_ALPHA_TEST;
}
