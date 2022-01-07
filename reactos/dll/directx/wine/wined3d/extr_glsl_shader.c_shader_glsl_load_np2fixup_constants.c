
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture {float* pow2_matrix; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct glsl_ps_program {TYPE_1__* np2_fixup_info; int np2_fixup_location; } ;
typedef int UINT ;
struct TYPE_2__ {int active; unsigned char* idx; int num_consts; } ;


 int ERR (char*) ;
 int GL_EXTCALL (int ) ;
 int MAX_FRAGMENT_SAMPLERS ;
 int glUniform4fv (int ,int ,float*) ;

__attribute__((used)) static void shader_glsl_load_np2fixup_constants(const struct glsl_ps_program *ps,
        const struct wined3d_gl_info *gl_info, const struct wined3d_state *state)
{
    struct
    {
        float sx, sy;
    }
    np2fixup_constants[MAX_FRAGMENT_SAMPLERS];
    UINT fixup = ps->np2_fixup_info->active;
    UINT i;

    for (i = 0; fixup; fixup >>= 1, ++i)
    {
        const struct wined3d_texture *tex = state->textures[i];
        unsigned char idx = ps->np2_fixup_info->idx[i];

        if (!tex)
        {
            ERR("Nonexistent texture is flagged for NP2 texcoord fixup.\n");
            continue;
        }

        np2fixup_constants[idx].sx = tex->pow2_matrix[0];
        np2fixup_constants[idx].sy = tex->pow2_matrix[5];
    }

    GL_EXTCALL(glUniform4fv(ps->np2_fixup_location, ps->np2_fixup_info->num_consts, &np2fixup_constants[0].sx));
}
