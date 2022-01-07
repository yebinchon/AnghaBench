
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {scalar_t__* render_states; } ;
struct wined3d_context {int dummy; } ;
typedef int DWORD ;


 int WARN (char*) ;
 size_t WINED3D_RS_SRGBWRITEENABLE ;

__attribute__((used)) static void atifs_srgbwriteenable(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    if (state->render_states[WINED3D_RS_SRGBWRITEENABLE])
        WARN("sRGB writes are not supported by this fragment pipe.\n");
}
