
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int handler_idx; unsigned int src_count; int * src; struct wined3d_shader_dst_param* dst; TYPE_1__* ctx; } ;
struct wined3d_shader_dst_param {int dummy; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;


 int FIXME (char*,int ) ;
 int debug_d3dshaderinstructionhandler (int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,char const*,int ,char*,char*) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;
 int shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,unsigned int,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void shader_hw_map2gl(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    const char *instruction;
    char arguments[256], dst_str[50];
    unsigned int i;
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];

    switch (ins->handler_idx)
    {
        case 146: instruction = "ABS"; break;
        case 145: instruction = "ADD"; break;
        case 144: instruction = "XPD"; break;
        case 143: instruction = "DP3"; break;
        case 142: instruction = "DP4"; break;
        case 141: instruction = "DST"; break;
        case 139: instruction = "FRC"; break;
        case 138: instruction = "LIT"; break;
        case 137: instruction = "LRP"; break;
        case 136: instruction = "MAD"; break;
        case 135: instruction = "MAX"; break;
        case 134: instruction = "MIN"; break;
        case 133: instruction = "MOV"; break;
        case 131: instruction = "MUL"; break;
        case 130: instruction = "SGE"; break;
        case 129: instruction = "SLT"; break;
        case 128: instruction = "SUB"; break;
        case 132:instruction = "ARR"; break;
        case 140: instruction = "DDX"; break;
        default: instruction = "";
            FIXME("Unhandled opcode %s.\n", debug_d3dshaderinstructionhandler(ins->handler_idx));
            break;
    }


    arguments[0] = '\0';
    shader_arb_get_dst_param(ins, dst, dst_str);
    for (i = 0; i < ins->src_count; ++i)
    {
        char operand[100];
        strcat(arguments, ", ");
        shader_arb_get_src_param(ins, &ins->src[i], i, operand);
        strcat(arguments, operand);
    }
    shader_addline(buffer, "%s%s %s%s;\n", instruction, shader_arb_get_modifier(ins), dst_str, arguments);
}
