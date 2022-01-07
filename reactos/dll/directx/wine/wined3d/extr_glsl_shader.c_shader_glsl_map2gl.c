
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int handler_idx; int src_count; int * src; TYPE_1__* ctx; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef int DWORD ;


 int ERR (char*,int ) ;
 int debug_d3dshaderinstructionhandler (int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_map2gl(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src_param;
    const char *instruction;
    DWORD write_mask;
    unsigned i;



    switch (ins->handler_idx)
    {
        case 151: instruction = "abs"; break;
        case 150: instruction = "bitfieldReverse"; break;
        case 149: instruction = "bitCount"; break;
        case 148: instruction = "dFdx"; break;
        case 147: instruction = "dFdxCoarse"; break;
        case 146: instruction = "dFdxFine"; break;
        case 145: instruction = "ycorrection.y * dFdy"; break;
        case 144: instruction = "ycorrection.y * dFdyCoarse"; break;
        case 143: instruction = "ycorrection.y * dFdyFine"; break;
        case 142: instruction = "findMSB"; break;
        case 141: instruction = "findLSB"; break;
        case 140: instruction = "findMSB"; break;
        case 139: instruction = "fract"; break;
        case 138: instruction = "max"; break;
        case 137: instruction = "min"; break;
        case 136: instruction = "max"; break;
        case 135: instruction = "min"; break;
        case 134: instruction = "roundEven"; break;
        case 133: instruction = "floor"; break;
        case 132: instruction = "ceil"; break;
        case 131: instruction = "trunc"; break;
        case 130: instruction = "sqrt"; break;
        case 129: instruction = "max"; break;
        case 128: instruction = "min"; break;
        default: instruction = "";
            ERR("Opcode %s not yet handled in GLSL.\n", debug_d3dshaderinstructionhandler(ins->handler_idx));
            break;
    }

    write_mask = shader_glsl_append_dst(buffer, ins);


    if (ins->handler_idx == 142 || ins->handler_idx == 140)
        shader_addline(buffer, "31 - ");
    shader_addline(buffer, "%s(", instruction);

    if (ins->src_count)
    {
        shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src_param);
        shader_addline(buffer, "%s", src_param.param_str);
        for (i = 1; i < ins->src_count; ++i)
        {
            shader_glsl_add_src_param(ins, &ins->src[i], write_mask, &src_param);
            shader_addline(buffer, ", %s", src_param.param_str);
        }
    }

    shader_addline(buffer, "));\n");
}
