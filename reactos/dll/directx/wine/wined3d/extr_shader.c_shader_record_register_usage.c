
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_register {int type; TYPE_4__* idx; } ;
struct wined3d_shader_reg_maps {unsigned int texcoord; unsigned int address; unsigned int temporary; int input_rel_addressing; unsigned int input_registers; int fog; int point_size; int vpos; int usesfacing; int min_rel_offset; int max_rel_offset; unsigned int integer_constants; unsigned int boolean_constants; unsigned int rt_mask; int vocp; int constf; int usesrelconstF; } ;
struct TYPE_5__ {unsigned int input_reg_used; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;
struct wined3d_shader {TYPE_3__* limits; TYPE_2__ u; } ;
typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;
struct TYPE_8__ {unsigned int offset; int rel_addr; } ;
struct TYPE_7__ {int constant_int; unsigned int constant_bool; int constant_float; } ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int,unsigned int,unsigned int) ;
 int TRUE ;
 int WARN (char*,int) ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int min (int ,unsigned int) ;
 int wined3d_insert_bits (int ,int,int,int) ;

__attribute__((used)) static BOOL shader_record_register_usage(struct wined3d_shader *shader, struct wined3d_shader_reg_maps *reg_maps,
        const struct wined3d_shader_register *reg, enum wined3d_shader_type shader_type, unsigned int constf_size)
{
    switch (reg->type)
    {
        case 128:
            if (shader_type == WINED3D_SHADER_TYPE_PIXEL)
                reg_maps->texcoord |= 1u << reg->idx[0].offset;
            else
                reg_maps->address |= 1u << reg->idx[0].offset;
            break;

        case 129:
            reg_maps->temporary |= 1u << reg->idx[0].offset;
            break;

        case 133:
            if (reg->idx[0].rel_addr)
                reg_maps->input_rel_addressing = 1;
            if (shader_type == WINED3D_SHADER_TYPE_PIXEL)
            {




                if (reg->idx[0].rel_addr)
                    shader->u.ps.input_reg_used = ~0u;
                else
                    shader->u.ps.input_reg_used |= 1u << reg->idx[0].offset;
            }
            else
            {
                reg_maps->input_registers |= 1u << reg->idx[0].offset;
            }
            break;

        case 130:
            if (reg->idx[0].offset == 1)
                reg_maps->fog = 1;
            if (reg->idx[0].offset == 2)
                reg_maps->point_size = 1;
            break;

        case 132:
            if (shader_type == WINED3D_SHADER_TYPE_PIXEL)
            {
                if (!reg->idx[0].offset)
                    reg_maps->vpos = 1;
                else if (reg->idx[0].offset == 1)
                    reg_maps->usesfacing = 1;
            }
            break;

        case 136:
            if (reg->idx[0].rel_addr)
            {
                if (reg->idx[0].offset < reg_maps->min_rel_offset)
                    reg_maps->min_rel_offset = reg->idx[0].offset;
                if (reg->idx[0].offset > reg_maps->max_rel_offset)
                    reg_maps->max_rel_offset = reg->idx[0].offset;
                reg_maps->usesrelconstF = TRUE;
            }
            else
            {
                if (reg->idx[0].offset >= min(shader->limits->constant_float, constf_size))
                {
                    WARN("Shader using float constant %u which is not supported.\n", reg->idx[0].offset);
                    return FALSE;
                }
                else
                {
                    wined3d_insert_bits(reg_maps->constf, reg->idx[0].offset, 1, 0x1);
                }
            }
            break;

        case 134:
            if (reg->idx[0].offset >= shader->limits->constant_int)
            {
                WARN("Shader using integer constant %u which is not supported.\n", reg->idx[0].offset);
                return FALSE;
            }
            else
            {
                reg_maps->integer_constants |= (1u << reg->idx[0].offset);
            }
            break;

        case 135:
            if (reg->idx[0].offset >= shader->limits->constant_bool)
            {
                WARN("Shader using bool constant %u which is not supported.\n", reg->idx[0].offset);
                return FALSE;
            }
            else
            {
                reg_maps->boolean_constants |= (1u << reg->idx[0].offset);
            }
            break;

        case 137:
            reg_maps->rt_mask |= (1u << reg->idx[0].offset);
            break;

        case 131:
            reg_maps->vocp = 1;
            break;

        default:
            TRACE("Not recording register of type %#x and [%#x][%#x].\n",
                    reg->type, reg->idx[0].offset, reg->idx[1].offset);
            break;
    }
    return TRUE;
}
