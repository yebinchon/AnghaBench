
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_shader_signature_element {char* semantic_name; int semantic_idx; size_t register_idx; } ;
struct TYPE_3__ {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct wined3d_shader {TYPE_1__ input_signature; } ;
struct shader_arb_ctx_priv {char** ps_input; } ;
struct TYPE_4__ {int vp_mode; } ;
struct arb_ps_compile_args {TYPE_2__ super; } ;
typedef int DWORD ;


 int TRACE (char*,size_t,char const*,int,char*) ;
 int WINED3D_DECL_USAGE_COLOR ;
 int WINED3D_DECL_USAGE_FOG ;
 int WINED3D_DECL_USAGE_TEXCOORD ;


 int shader_match_semantic (char const*,int ) ;


__attribute__((used)) static void init_ps_input(const struct wined3d_shader *shader,
        const struct arb_ps_compile_args *args, struct shader_arb_ctx_priv *priv)
{
    static const char * const texcoords[8] =
    {
        "fragment.texcoord[0]", "fragment.texcoord[1]", "fragment.texcoord[2]", "fragment.texcoord[3]",
        "fragment.texcoord[4]", "fragment.texcoord[5]", "fragment.texcoord[6]", "fragment.texcoord[7]"
    };
    unsigned int i;
    const struct wined3d_shader_signature_element *input;
    const char *semantic_name;
    DWORD semantic_idx;

    switch(args->super.vp_mode)
    {
        case 129:
        case 130:
            for (i = 0; i < shader->input_signature.element_count; ++i)
            {
                input = &shader->input_signature.elements[i];
                if (!(semantic_name = input->semantic_name))
                    continue;
                semantic_idx = input->semantic_idx;

                if (shader_match_semantic(semantic_name, WINED3D_DECL_USAGE_COLOR))
                {
                    if (!semantic_idx)
                        priv->ps_input[input->register_idx] = "fragment.color.primary";
                    else if (semantic_idx == 1)
                        priv->ps_input[input->register_idx] = "fragment.color.secondary";
                    else
                        priv->ps_input[input->register_idx] = "0.0";
                }
                else if (args->super.vp_mode == 130)
                {
                    priv->ps_input[input->register_idx] = "0.0";
                }
                else if (shader_match_semantic(semantic_name, WINED3D_DECL_USAGE_TEXCOORD))
                {
                    if (semantic_idx < 8)
                        priv->ps_input[input->register_idx] = texcoords[semantic_idx];
                    else
                        priv->ps_input[input->register_idx] = "0.0";
                }
                else if (shader_match_semantic(semantic_name, WINED3D_DECL_USAGE_FOG))
                {
                    if (!semantic_idx)
                        priv->ps_input[input->register_idx] = "fragment.fogcoord";
                    else
                        priv->ps_input[input->register_idx] = "0.0";
                }
                else
                {
                    priv->ps_input[input->register_idx] = "0.0";
                }

                TRACE("v%u, semantic %s%u is %s\n", input->register_idx,
                        semantic_name, semantic_idx, priv->ps_input[input->register_idx]);
            }
            break;

        case 128:



            for(i = 0; i < 8; i++)
            {
                priv->ps_input[i] = texcoords[i];
            }
            priv->ps_input[8] = "fragment.color.primary";
            priv->ps_input[9] = "fragment.color.secondary";
            break;
    }
}
