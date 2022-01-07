
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float height; } ;
struct wined3d_state {TYPE_1__ viewport; scalar_t__* render_states; } ;
struct wined3d_context {int dummy; } ;
typedef scalar_t__ DWORD ;


 size_t WINED3D_RS_POINTSCALEENABLE ;
 size_t WINED3D_RS_POINTSCALE_A ;
 size_t WINED3D_RS_POINTSCALE_B ;
 size_t WINED3D_RS_POINTSCALE_C ;
 size_t WINED3D_RS_POINTSIZE ;

void get_pointsize(const struct wined3d_context *context, const struct wined3d_state *state,
        float *out_pointsize, float *out_att)
{



    union
    {
        DWORD d;
        float f;
    } pointsize, a, b, c;

    out_att[0] = 1.0f;
    out_att[1] = 0.0f;
    out_att[2] = 0.0f;

    pointsize.d = state->render_states[WINED3D_RS_POINTSIZE];
    a.d = state->render_states[WINED3D_RS_POINTSCALE_A];
    b.d = state->render_states[WINED3D_RS_POINTSCALE_B];
    c.d = state->render_states[WINED3D_RS_POINTSCALE_C];

    if (state->render_states[WINED3D_RS_POINTSCALEENABLE])
    {
        float scale_factor = state->viewport.height * state->viewport.height;

        out_att[0] = a.f / scale_factor;
        out_att[1] = b.f / scale_factor;
        out_att[2] = c.f / scale_factor;
    }
    *out_pointsize = pointsize.f;
}
