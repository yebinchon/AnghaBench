
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int * transforms; } ;
struct wined3d_matrix {int dummy; } ;
struct wined3d_context {scalar_t__ last_was_rhw; } ;


 size_t WINED3D_TS_VIEW ;
 size_t WINED3D_TS_WORLD_MATRIX (unsigned int) ;
 int get_identity_matrix (struct wined3d_matrix*) ;
 int multiply_matrix (struct wined3d_matrix*,int *,int *) ;

void get_modelview_matrix(const struct wined3d_context *context, const struct wined3d_state *state,
        unsigned int index, struct wined3d_matrix *mat)
{
    if (context->last_was_rhw)
        get_identity_matrix(mat);
    else
        multiply_matrix(mat, &state->transforms[WINED3D_TS_VIEW], &state->transforms[WINED3D_TS_WORLD_MATRIX(index)]);
}
