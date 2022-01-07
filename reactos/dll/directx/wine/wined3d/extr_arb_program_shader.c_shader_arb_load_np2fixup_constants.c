
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture {int * pow2_matrix; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct TYPE_2__ {int active; unsigned char* idx; size_t num_consts; } ;
struct arb_ps_np2fixup_info {scalar_t__ offset; TYPE_1__ super; } ;
typedef int WORD ;
typedef size_t UINT ;
typedef int GLfloat ;


 int ERR (char*) ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int MAX_FRAGMENT_SAMPLERS ;
 int glProgramEnvParameter4fvARB (int ,scalar_t__,int *) ;

__attribute__((used)) static void shader_arb_load_np2fixup_constants(const struct arb_ps_np2fixup_info *fixup,
        const struct wined3d_gl_info *gl_info, const struct wined3d_state *state)
{
    GLfloat np2fixup_constants[4 * MAX_FRAGMENT_SAMPLERS];
    WORD active = fixup->super.active;
    UINT i;

    if (!active)
        return;

    for (i = 0; active; active >>= 1, ++i)
    {
        const struct wined3d_texture *tex = state->textures[i];
        unsigned char idx = fixup->super.idx[i];
        GLfloat *tex_dim = &np2fixup_constants[(idx >> 1) * 4];

        if (!(active & 1))
            continue;

        if (!tex)
        {
            ERR("Nonexistent texture is flagged for NP2 texcoord fixup.\n");
            continue;
        }

        if (idx % 2)
        {
            tex_dim[2] = tex->pow2_matrix[0];
            tex_dim[3] = tex->pow2_matrix[5];
        }
        else
        {
            tex_dim[0] = tex->pow2_matrix[0];
            tex_dim[1] = tex->pow2_matrix[5];
        }
    }

    for (i = 0; i < fixup->super.num_consts; ++i)
    {
        GL_EXTCALL(glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB,
                fixup->offset + i, &np2fixup_constants[i * 4]));
    }
}
