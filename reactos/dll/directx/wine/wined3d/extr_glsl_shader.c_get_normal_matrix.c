
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_matrix {float _11; } ;
struct wined3d_context {TYPE_1__* d3d_info; } ;
struct TYPE_2__ {int wined3d_creation_flags; } ;


 int WINED3D_LEGACY_FFP_LIGHTING ;
 int invert_matrix (struct wined3d_matrix*,struct wined3d_matrix*) ;
 int invert_matrix_3d (struct wined3d_matrix*,struct wined3d_matrix*) ;

__attribute__((used)) static void get_normal_matrix(struct wined3d_context *context, struct wined3d_matrix *mat, float *normal)
{
    int i, j;

    if (context->d3d_info->wined3d_creation_flags & WINED3D_LEGACY_FFP_LIGHTING)
        invert_matrix_3d(mat, mat);
    else
        invert_matrix(mat, mat);



    for (i = 0; i < 3; ++i)
        for (j = 0; j < 3; ++j)
            normal[i * 3 + j] = (&mat->_11)[j * 4 + i];
}
