
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int * render_states; } ;
struct wined3d_context {int fog_source; } ;
typedef int DWORD ;


 int ERR (char*) ;



 float INFINITY ;
 int WINED3D_FOG_NONE ;
 size_t WINED3D_RS_FOGEND ;
 size_t WINED3D_RS_FOGSTART ;
 size_t WINED3D_RS_FOGTABLEMODE ;

void get_fog_start_end(const struct wined3d_context *context, const struct wined3d_state *state,
        float *start, float *end)
{
    union
    {
        DWORD d;
        float f;
    } tmpvalue;

    switch (context->fog_source)
    {
        case 128:
            *start = 1.0f;
            *end = 0.0f;
            break;

        case 130:
            *start = 255.0f;
            *end = 0.0f;
            break;

        case 129:
            tmpvalue.d = state->render_states[WINED3D_RS_FOGSTART];
            *start = tmpvalue.f;
            tmpvalue.d = state->render_states[WINED3D_RS_FOGEND];
            *end = tmpvalue.f;




            if (state->render_states[WINED3D_RS_FOGTABLEMODE] == WINED3D_FOG_NONE && *start == *end)
            {
                *start = -INFINITY;
                *end = 0.0f;
            }
            break;

        default:

            ERR("Unexpected fog coordinate source.\n");
            *start = 0.0f;
            *end = 0.0f;
    }
}
