
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef scalar_t__ BOOL ;


 int shader_addline (struct wined3d_string_buffer*,char*,char const*,char const*,...) ;

__attribute__((used)) static void arbfp_add_sRGB_correction(struct wined3d_string_buffer *buffer, const char *fragcolor,
        const char *tmp1, const char *tmp2, const char *tmp3, const char *tmp4, BOOL condcode)
{


    if(condcode)
    {

        shader_addline(buffer, "SUBC %s, %s.x, srgb_consts1.x;\n", tmp1, fragcolor);

        shader_addline(buffer, "POW %s.x (GE), %s.x, srgb_consts0.x;\n", fragcolor, fragcolor);
        shader_addline(buffer, "POW %s.y (GE), %s.y, srgb_consts0.x;\n", fragcolor, fragcolor);
        shader_addline(buffer, "POW %s.z (GE), %s.z, srgb_consts0.x;\n", fragcolor, fragcolor);
        shader_addline(buffer, "MUL %s.xyz (GE), %s, srgb_consts0.y;\n", fragcolor, fragcolor);
        shader_addline(buffer, "SUB %s.xyz (GE), %s, srgb_consts0.z;\n", fragcolor, fragcolor);

        shader_addline(buffer, "MUL %s.xyz (LT), srgb_consts0.w, %s;\n", fragcolor, fragcolor);
    }
    else
    {

        shader_addline(buffer, "POW %s.x, %s.x, srgb_consts0.x;\n", tmp1, fragcolor);
        shader_addline(buffer, "POW %s.y, %s.y, srgb_consts0.x;\n", tmp1, fragcolor);
        shader_addline(buffer, "POW %s.z, %s.z, srgb_consts0.x;\n", tmp1, fragcolor);
        shader_addline(buffer, "MUL %s, %s, srgb_consts0.y;\n", tmp1, tmp1);
        shader_addline(buffer, "SUB %s, %s, srgb_consts0.z;\n", tmp1, tmp1);

        shader_addline(buffer, "MUL %s, srgb_consts0.w, %s;\n", tmp2, fragcolor);

        shader_addline(buffer, "SLT %s, srgb_consts1.x, %s;\n", tmp3, fragcolor);
        shader_addline(buffer, "SGE %s, srgb_consts1.x, %s;\n", tmp4, fragcolor);

        shader_addline(buffer, "MUL %s.xyz, %s, %s;\n", fragcolor, tmp1, tmp3);

        shader_addline(buffer, "MAD %s.xyz, %s, %s, %s;\n", fragcolor, tmp2, tmp4, fragcolor);





    }

}
