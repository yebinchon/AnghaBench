
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int major; int type; } ;
struct TYPE_4__ {size_t* immconst_data; size_t fp_body_idx; } ;
struct wined3d_shader_register {int type; int immconst_type; size_t data_type; TYPE_2__ u; TYPE_1__* idx; } ;
typedef size_t UINT ;
struct TYPE_3__ {size_t offset; scalar_t__ rel_addr; } ;


 int FIXME (char*,size_t) ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_dump_src_param (struct wined3d_string_buffer*,scalar_t__,struct wined3d_shader_version const*) ;
 size_t shader_get_float_offset (int,size_t) ;

__attribute__((used)) static void shader_dump_register(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_register *reg, const struct wined3d_shader_version *shader_version)
{
    static const char * const rastout_reg_names[] = {"oPos", "oFog", "oPts"};
    static const char * const misctype_reg_names[] = {"vPos", "vFace"};
    UINT offset = reg->idx[0].offset;

    switch (reg->type)
    {
        case 141:
            shader_addline(buffer, "r");
            break;

        case 159:
            shader_addline(buffer, "v");
            break;

        case 179:
        case 178:
        case 177:
        case 176:
            shader_addline(buffer, "c");
            offset = shader_get_float_offset(reg->type, offset);
            break;

        case 138:
            shader_addline(buffer, "%c", shader_version->type == WINED3D_SHADER_TYPE_PIXEL ? 't' : 'a');
            break;

        case 146:
            shader_addline(buffer, "%s", rastout_reg_names[offset]);
            break;

        case 180:
            shader_addline(buffer, "oC");
            break;

        case 171:
            shader_addline(buffer, "oDepth");
            break;

        case 170:
            shader_addline(buffer, "oDepthGE");
            break;

        case 169:
            shader_addline(buffer, "oDepthLE");
            break;

        case 181:
            shader_addline(buffer, "oD");
            break;

        case 139:


            if (shader_version->major >= 3)
                shader_addline(buffer, "o");
            else
                shader_addline(buffer, "oT");
            break;

        case 173:
            shader_addline(buffer, "i");
            break;

        case 175:
            shader_addline(buffer, "b");
            break;

        case 157:
            shader_addline(buffer, "l");
            break;

        case 154:
            shader_addline(buffer, "aL");
            break;

        case 143:
            shader_addline(buffer, "s");
            break;

        case 153:
            if (offset > 1)
            {
                FIXME("Unhandled misctype register %u.\n", offset);
                shader_addline(buffer, "<unhandled misctype %#x>", offset);
            }
            else
            {
                shader_addline(buffer, "%s", misctype_reg_names[offset]);
            }
            break;

        case 148:
            shader_addline(buffer, "p");
            break;

        case 162:
            shader_addline(buffer, "l");
            break;

        case 174:
            shader_addline(buffer, "cb");
            break;

        case 161:
            shader_addline(buffer, "icb");
            break;

        case 147:
            shader_addline(buffer, "primID");
            break;

        case 152:
            shader_addline(buffer, "null");
            break;

        case 145:
            shader_addline(buffer, "t");
            break;

        case 135:
            shader_addline(buffer, "u");
            break;

        case 150:
            shader_addline(buffer, "vOutputControlPointID");
            break;

        case 168:
            shader_addline(buffer, "vForkInstanceId");
            break;

        case 158:
            shader_addline(buffer, "vJoinInstanceId");
            break;

        case 160:
            shader_addline(buffer, "vicp");
            break;

        case 151:
            shader_addline(buffer, "vocp");
            break;

        case 149:
            shader_addline(buffer, "vpc");
            break;

        case 140:
            shader_addline(buffer, "vDomainLocation");
            break;

        case 165:
            shader_addline(buffer, "g");
            break;

        case 136:
            shader_addline(buffer, "vThreadID");
            break;

        case 137:
            shader_addline(buffer, "vThreadGroupID");
            break;

        case 156:
            shader_addline(buffer, "vThreadIDInGroup");
            break;

        case 155:
            shader_addline(buffer, "vThreadIDInGroupFlattened");
            break;

        case 163:
            shader_addline(buffer, "x");
            break;

        case 142:
            shader_addline(buffer, "m");
            break;

        case 167:
            shader_addline(buffer, "fb");
            break;

        case 166:
            shader_addline(buffer, "fp");
            break;

        case 172:
            shader_addline(buffer, "vCoverage");
            break;

        case 144:
            shader_addline(buffer, "oMask");
            break;

        case 164:
            shader_addline(buffer, "vGSInstanceID");
            break;

        default:
            shader_addline(buffer, "<unhandled_rtype(%#x)>", reg->type);
            break;
    }

    if (reg->type == 162)
    {
        shader_addline(buffer, "(");
        switch (reg->immconst_type)
        {
            case 129:
                switch (reg->data_type)
                {
                    case 134:
                        shader_addline(buffer, "%.8e", *(const float *)reg->u.immconst_data);
                        break;
                    case 133:
                        shader_addline(buffer, "%d", reg->u.immconst_data[0]);
                        break;
                    case 132:
                    case 131:
                    case 130:
                        shader_addline(buffer, "%u", reg->u.immconst_data[0]);
                        break;
                    default:
                        shader_addline(buffer, "<unhandled data type %#x>", reg->data_type);
                        break;
                }
                break;

            case 128:
                switch (reg->data_type)
                {
                    case 134:
                        shader_addline(buffer, "%.8e, %.8e, %.8e, %.8e",
                                *(const float *)&reg->u.immconst_data[0], *(const float *)&reg->u.immconst_data[1],
                                *(const float *)&reg->u.immconst_data[2], *(const float *)&reg->u.immconst_data[3]);
                        break;
                    case 133:
                        shader_addline(buffer, "%d, %d, %d, %d",
                                reg->u.immconst_data[0], reg->u.immconst_data[1],
                                reg->u.immconst_data[2], reg->u.immconst_data[3]);
                        break;
                    case 132:
                    case 131:
                    case 130:
                        shader_addline(buffer, "%u, %u, %u, %u",
                                reg->u.immconst_data[0], reg->u.immconst_data[1],
                                reg->u.immconst_data[2], reg->u.immconst_data[3]);
                        break;
                    default:
                        shader_addline(buffer, "<unhandled data type %#x>", reg->data_type);
                        break;
                }
                break;

            default:
                shader_addline(buffer, "<unhandled immconst_type %#x>", reg->immconst_type);
                break;
        }
        shader_addline(buffer, ")");
    }
    else if (reg->type != 146
            && reg->type != 153
            && reg->type != 152)
    {
        if (offset != ~0u)
        {
            shader_addline(buffer, "[");
            if (reg->idx[0].rel_addr)
            {
                shader_dump_src_param(buffer, reg->idx[0].rel_addr, shader_version);
                shader_addline(buffer, " + ");
            }
            shader_addline(buffer, "%u]", offset);

            if (reg->idx[1].offset != ~0u)
            {
                shader_addline(buffer, "[");
                if (reg->idx[1].rel_addr)
                {
                    shader_dump_src_param(buffer, reg->idx[1].rel_addr, shader_version);
                    shader_addline(buffer, " + ");
                }
                shader_addline(buffer, "%u]", reg->idx[1].offset);
            }
        }

        if (reg->type == 166)
            shader_addline(buffer, "[%u]", reg->u.fp_body_idx);
    }
}
