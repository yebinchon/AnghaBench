
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int major; scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ reg; } ;
struct wined3d_shader_semantic {int resource_type; int resource_data_type; int usage; int usage_idx; TYPE_2__ reg; } ;


 int FIXME (char*,int) ;
 scalar_t__ WINED3DSPR_RESOURCE ;
 scalar_t__ WINED3DSPR_SAMPLER ;
 scalar_t__ WINED3DSPR_UAV ;
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_dump_uav_flags (struct wined3d_string_buffer*,unsigned int) ;

__attribute__((used)) static void shader_dump_decl_usage(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_semantic *semantic, unsigned int flags,
        const struct wined3d_shader_version *shader_version)
{
    shader_addline(buffer, "dcl");

    if (semantic->reg.reg.type == WINED3DSPR_SAMPLER)
    {
        switch (semantic->resource_type)
        {
            case 134:
                shader_addline(buffer, "_2d");
                break;

            case 130:
                shader_addline(buffer, "_3d");
                break;

            case 129:
                shader_addline(buffer, "_cube");
                break;

            default:
                shader_addline(buffer, "_unknown_resource_type(%#x)", semantic->resource_type);
                break;
        }
    }
    else if (semantic->reg.reg.type == WINED3DSPR_RESOURCE || semantic->reg.reg.type == WINED3DSPR_UAV)
    {
        if (semantic->reg.reg.type == WINED3DSPR_RESOURCE)
            shader_addline(buffer, "_resource_");
        else
            shader_addline(buffer, "_uav_");
        switch (semantic->resource_type)
        {
            case 137:
                shader_addline(buffer, "buffer");
                break;

            case 136:
                shader_addline(buffer, "texture1d");
                break;

            case 134:
                shader_addline(buffer, "texture2d");
                break;

            case 132:
                shader_addline(buffer, "texture2dms");
                break;

            case 130:
                shader_addline(buffer, "texture3d");
                break;

            case 129:
                shader_addline(buffer, "texturecube");
                break;

            case 135:
                shader_addline(buffer, "texture1darray");
                break;

            case 133:
                shader_addline(buffer, "texture2darray");
                break;

            case 131:
                shader_addline(buffer, "texture2dmsarray");
                break;

            case 128:
                shader_addline(buffer, "texturecubearray");
                break;

            default:
                shader_addline(buffer, "unknown");
                break;
        }
        if (semantic->reg.reg.type == WINED3DSPR_UAV)
            shader_dump_uav_flags(buffer, flags);
        switch (semantic->resource_data_type)
        {
            case 156:
                shader_addline(buffer, " (float)");
                break;

            case 155:
                shader_addline(buffer, " (int)");
                break;

            case 153:
                shader_addline(buffer, " (uint)");
                break;

            case 152:
                shader_addline(buffer, " (unorm)");
                break;

            case 154:
                shader_addline(buffer, " (snorm)");
                break;

            default:
                shader_addline(buffer, " (unknown)");
                break;
        }
    }
    else
    {

        if (shader_version->major < 3 && shader_version->type == WINED3D_SHADER_TYPE_PIXEL)
            return;
        else
            shader_addline(buffer, "_");

        switch (semantic->usage)
        {
            case 144:
                shader_addline(buffer, "position%u", semantic->usage_idx);
                break;

            case 150:
                shader_addline(buffer, "blend");
                break;

            case 149:
                shader_addline(buffer, "weight");
                break;

            case 145:
                shader_addline(buffer, "normal%u", semantic->usage_idx);
                break;

            case 142:
                shader_addline(buffer, "psize");
                break;

            case 148:
                if (!semantic->usage_idx)
                    shader_addline(buffer, "color");
                else
                    shader_addline(buffer, "specular%u", (semantic->usage_idx - 1));
                break;

            case 138:
                shader_addline(buffer, "texture%u", semantic->usage_idx);
                break;

            case 140:
                shader_addline(buffer, "tangent");
                break;

            case 151:
                shader_addline(buffer, "binormal");
                break;

            case 139:
                shader_addline(buffer, "tessfactor");
                break;

            case 143:
                shader_addline(buffer, "positionT%u", semantic->usage_idx);
                break;

            case 146:
                shader_addline(buffer, "fog");
                break;

            case 147:
                shader_addline(buffer, "depth");
                break;

            case 141:
                shader_addline(buffer, "sample");
                break;

            default:
                shader_addline(buffer, "<unknown_semantic(%#x)>", semantic->usage);
                FIXME("Unrecognised semantic usage %#x.\n", semantic->usage);
        }
    }
}
