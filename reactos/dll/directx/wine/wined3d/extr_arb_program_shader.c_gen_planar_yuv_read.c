
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct arbfp_blit_type {scalar_t__ fixup; scalar_t__ res_type; } ;
typedef int BOOL ;


 scalar_t__ COMPLEX_FIXUP_UYVY ;
 int TRUE ;
 scalar_t__ WINED3D_GL_RES_TYPE_TEX_RECT ;
 char* arbfp_texture_target (scalar_t__) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static BOOL gen_planar_yuv_read(struct wined3d_string_buffer *buffer, const struct arbfp_blit_type *type,
        char *luminance)
{
    char chroma;
    const char *tex, *texinstr = "TXP";

    if (type->fixup == COMPLEX_FIXUP_UYVY)
    {
        chroma = 'x';
        *luminance = 'w';
    }
    else
    {
        chroma = 'w';
        *luminance = 'x';
    }

    tex = arbfp_texture_target(type->res_type);
    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_RECT)
        texinstr = "TEX";
    if (type->res_type != WINED3D_GL_RES_TYPE_TEX_RECT)
    {
        shader_addline(buffer, "MUL texcrd.xy, fragment.texcoord[0], size.x;\n");
        shader_addline(buffer, "MOV texcrd.w, size.x;\n");
    }
    else
    {
        shader_addline(buffer, "MOV texcrd, fragment.texcoord[0];\n");
    }




    shader_addline(buffer, "FLR texcrd.x, texcrd.x;\n");
    shader_addline(buffer, "ADD texcrd.x, texcrd.x, coef.y;\n");




    shader_addline(buffer, "MUL texcrd2, texcrd, coef.y;\n");
    shader_addline(buffer, "FRC texcrd2, texcrd2;\n");


    shader_addline(buffer, "%s luminance, texcrd, texture[0], %s;\n", texinstr, tex);


    shader_addline(buffer, "SGE temp.x, texcrd2.x, coef.y;\n");
    shader_addline(buffer, "MUL chroma.x, luminance.%c, temp.x;\n", chroma);
    shader_addline(buffer, "SLT temp.x, texcrd2.x, coef.y;\n");
    shader_addline(buffer, "MUL chroma.y, luminance.%c, temp.x;\n", chroma);





    shader_addline(buffer, "MAD temp.x, temp.x, coef.z, -coef.x;\n");
    shader_addline(buffer, "ADD texcrd.x, texcrd, temp.x;\n");
    shader_addline(buffer, "%s luminance, texcrd, texture[0], %s;\n", texinstr, tex);


    shader_addline(buffer, "SGE temp.x, texcrd2.x, coef.y;\n");
    shader_addline(buffer, "MAD chroma.y, luminance.%c, temp.x, chroma.y;\n", chroma);
    shader_addline(buffer, "SLT temp.x, texcrd2.x, coef.y;\n");
    shader_addline(buffer, "MAD chroma.x, luminance.%c, temp.x, chroma.x;\n", chroma);






    shader_addline(buffer, "TEX luminance, fragment.texcoord[0], texture[0], %s;\n", tex);

    return TRUE;
}
