
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_matrix {float _14; float _12; float _24; float _22; float _34; float _32; float _44; float _42; float _13; float _23; float _33; float _43; int _31; int _41; int _21; } ;
struct wined3d_gl_info {int dummy; } ;
typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 int FIXME (char*) ;





 int WINED3D_TTFF_COUNT1 ;


 int WINED3D_TTFF_DISABLE ;
 int WINED3D_TTFF_PROJECTED ;
 int get_identity_matrix (struct wined3d_matrix*) ;

__attribute__((used)) static void compute_texture_matrix(const struct wined3d_gl_info *gl_info, const struct wined3d_matrix *matrix,
        DWORD flags, BOOL calculated_coords, BOOL transformed, enum wined3d_format_id format_id,
        BOOL ffp_proj_control, struct wined3d_matrix *out_matrix)
{
    struct wined3d_matrix mat;

    if (flags == WINED3D_TTFF_DISABLE || flags == WINED3D_TTFF_COUNT1 || transformed)
    {
        get_identity_matrix(out_matrix);
        return;
    }

    if (flags == (WINED3D_TTFF_COUNT1 | WINED3D_TTFF_PROJECTED))
    {
        ERR("Invalid texture transform flags: WINED3D_TTFF_COUNT1 | WINED3D_TTFF_PROJECTED.\n");
        return;
    }

    mat = *matrix;

    if (flags & WINED3D_TTFF_PROJECTED)
    {
        if (!ffp_proj_control)
        {
            switch (flags & ~WINED3D_TTFF_PROJECTED)
            {
                case 129:
                    mat._14 = mat._12;
                    mat._24 = mat._22;
                    mat._34 = mat._32;
                    mat._44 = mat._42;
                    mat._12 = mat._22 = mat._32 = mat._42 = 0.0f;
                    break;
                case 128:
                    mat._14 = mat._13;
                    mat._24 = mat._23;
                    mat._34 = mat._33;
                    mat._44 = mat._43;
                    mat._13 = mat._23 = mat._33 = mat._43 = 0.0f;
                    break;
            }
        }
    }
    else
    {


        if (!calculated_coords)
        {
            switch (format_id)
            {





                case 131:
                    mat._41 = mat._21;
                    mat._42 = mat._22;
                    mat._43 = mat._23;
                    mat._44 = mat._24;
                    break;

                case 132:
                    mat._41 = mat._31;
                    mat._42 = mat._32;
                    mat._43 = mat._33;
                    mat._44 = mat._34;
                    break;
                case 133:
                case 134:





                case 130:
                    break;
                default:
                    FIXME("Unexpected fixed function texture coord input\n");
            }
        }
        if (!ffp_proj_control)
        {
            switch (flags & ~WINED3D_TTFF_PROJECTED)
            {

                case 129:
                    mat._13 = mat._23 = mat._33 = mat._43 = 0.0f;
                default:
                    mat._14 = mat._24 = mat._34 = 0.0f; mat._44 = 1.0f;
            }
        }
    }

    *out_matrix = mat;
}
