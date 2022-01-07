
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
typedef int DWORD ;


 int GL_CONSTANT_COLOR0_NV ;
 int GL_EXTCALL (int ) ;
 size_t WINED3D_RS_TEXTUREFACTOR ;
 int glCombinerParameterfvNV (int ,int *) ;
 int wined3d_color_from_d3dcolor (struct wined3d_color*,int ) ;

__attribute__((used)) static void nvrc_texfactor(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_color color;

    wined3d_color_from_d3dcolor(&color, state->render_states[WINED3D_RS_TEXTUREFACTOR]);
    GL_EXTCALL(glCombinerParameterfvNV(GL_CONSTANT_COLOR0_NV, &color.r));
}
