
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct arbfp_blit_type {scalar_t__ res_type; } ;
typedef int BOOL ;


 int TRUE ;
 scalar_t__ WINED3D_GL_RES_TYPE_TEX_2D ;
 char* arbfp_texture_target (scalar_t__) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_append_imm_vec4 (struct wined3d_string_buffer*,float const*) ;

__attribute__((used)) static BOOL gen_nv12_read(struct wined3d_string_buffer *buffer, const struct arbfp_blit_type *type,
        char *luminance)
{
    const char *tex;
    static const float nv12_coef[]
            = {2.0f / 3.0f, 1.0f / 3.0f, 1.0f, 1.0f};

    tex = arbfp_texture_target(type->res_type);
    shader_addline(buffer, "PARAM nv12_coef = ");
    shader_arb_append_imm_vec4(buffer, nv12_coef);
    shader_addline(buffer, ";\n");

    shader_addline(buffer, "MOV texcrd, fragment.texcoord[0];\n");

    shader_addline(buffer, "MUL texcrd.x, texcrd.x, coef.y;\n");

    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {
        shader_addline(buffer, "RCP chroma.w, size.x;\n");
        shader_addline(buffer, "RCP chroma.z, size.y;\n");

        shader_addline(buffer, "MAD texcrd.y, texcrd.y, nv12_coef.y, nv12_coef.x;\n");







        shader_addline(buffer, "MUL texcrd.x, texcrd.x, size.x;\n");
        shader_addline(buffer, "FLR texcrd.x, texcrd.x;\n");


        shader_addline(buffer, "MAD texcrd.x, texcrd.x, coef.z, coef.y;\n");


        shader_addline(buffer, "MUL texcrd.x, texcrd.x, chroma.w;\n");


        shader_addline(buffer, "MAD temp.y, coef.y, chroma.z, nv12_coef.x;\n");
        shader_addline(buffer, "MAX texcrd.y, temp.y, texcrd.y;\n");
        shader_addline(buffer, "MAD temp.y, -coef.y, chroma.z, nv12_coef.z;\n");
        shader_addline(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
    }
    else
    {

        shader_addline(buffer, "MAD texcrd.y, texcrd.y, coef.y, size.y;\n");

        shader_addline(buffer, "FLR texcrd.x, texcrd.x;\n");


        shader_addline(buffer, "MAD texcrd.x, texcrd.x, coef.z, coef.y;\n");


        shader_addline(buffer, "MAD temp.y, size.y, coef.y, size.y;\n");
        shader_addline(buffer, "ADD temp.y, temp.y, -coef.y;\n");
        shader_addline(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
        shader_addline(buffer, "ADD temp.y, size.y, coef.y;\n");
        shader_addline(buffer, "MAX texcrd.y, temp.y, texcrd.y;\n");
    }

    shader_addline(buffer, "TEX temp, texcrd, texture[0], %s;\n", tex);
    shader_addline(buffer, "MOV chroma.y, temp.w;\n");

    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {

        shader_addline(buffer, "ADD texcrd.x, texcrd.x, chroma.w;\n");
    }
    else
    {

        shader_addline(buffer, "ADD texcrd.x, texcrd.x, coef.x;\n");
    }
    shader_addline(buffer, "TEX temp, texcrd, texture[0], %s;\n", tex);
    shader_addline(buffer, "MOV chroma.x, temp.w;\n");




    shader_addline(buffer, "MOV texcrd, fragment.texcoord[0];\n");
    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {

        shader_addline(buffer, "MUL texcrd.y, texcrd.y, nv12_coef.x;\n");
        shader_addline(buffer, "MAD temp.y, -coef.y, chroma.w, nv12_coef.x;\n");
        shader_addline(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
        shader_addline(buffer, "TEX luminance, texcrd, texture[0], %s;\n", tex);
    }
    else
    {




        shader_addline(buffer, "ADD temp.x, size.y, -coef.y;\n");
        shader_addline(buffer, "MIN texcrd.y, texcrd.y, size.x;\n");
        shader_addline(buffer, "TEX luminance, texcrd, texture[0], %s;\n", tex);
    }
    *luminance = 'a';

    return TRUE;
}
