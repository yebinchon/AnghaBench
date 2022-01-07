
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_material_color_source { ____Placeholder_wined3d_material_color_source } wined3d_material_color_source ;


 int ERR (char*,int) ;




__attribute__((used)) static const char *shader_glsl_ffp_mcs(enum wined3d_material_color_source mcs, const char *material)
{
    switch (mcs)
    {
        case 128:
            return material;
        case 130:
            return "ffp_attrib_diffuse";
        case 129:
            return "ffp_attrib_specular";
        default:
            ERR("Invalid material color source %#x.\n", mcs);
            return "<invalid>";
    }
}
