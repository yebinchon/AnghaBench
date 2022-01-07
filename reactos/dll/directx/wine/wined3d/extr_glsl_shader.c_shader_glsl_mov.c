
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_5__* dst; TYPE_3__* ctx; int * src; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_4__ reg; } ;
struct TYPE_8__ {TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {int major; scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ shader_version; } ;
typedef int DWORD ;


 size_t EXT_GPU_SHADER4 ;
 scalar_t__ WINED3DSIH_MOVA ;
 scalar_t__ WINED3DSPR_ADDR ;
 scalar_t__ WINED3D_SHADER_TYPE_VERTEX ;
 int shader_addline (struct wined3d_string_buffer*,char*,unsigned int,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ;
 int shader_glsl_get_version (struct wined3d_gl_info const*) ;
 unsigned int shader_glsl_get_write_mask_size (int ) ;

__attribute__((used)) static void shader_glsl_mov(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_gl_info *gl_info = ins->ctx->gl_info;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    DWORD write_mask;

    write_mask = shader_glsl_append_dst(buffer, ins);
    shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src0_param);



    if (ins->ctx->reg_maps->shader_version.major == 1
            && ins->ctx->reg_maps->shader_version.type == WINED3D_SHADER_TYPE_VERTEX
            && ins->dst[0].reg.type == WINED3DSPR_ADDR)
    {

        unsigned int mask_size = shader_glsl_get_write_mask_size(write_mask);
        if (mask_size > 1) {
            shader_addline(buffer, "ivec%d(floor(%s)));\n", mask_size, src0_param.param_str);
        } else {
            shader_addline(buffer, "int(floor(%s)));\n", src0_param.param_str);
        }
    }
    else if (ins->handler_idx == WINED3DSIH_MOVA)
    {
        unsigned int mask_size = shader_glsl_get_write_mask_size(write_mask);

        if (shader_glsl_get_version(gl_info) >= 130 || gl_info->supported[EXT_GPU_SHADER4])
        {
            if (mask_size > 1)
                shader_addline(buffer, "ivec%d(round(%s)));\n", mask_size, src0_param.param_str);
            else
                shader_addline(buffer, "int(round(%s)));\n", src0_param.param_str);
        }
        else
        {
            if (mask_size > 1)
                shader_addline(buffer, "ivec%d(floor(abs(%s) + vec%d(0.5)) * sign(%s)));\n",
                        mask_size, src0_param.param_str, mask_size, src0_param.param_str);
            else
                shader_addline(buffer, "int(floor(abs(%s) + 0.5) * sign(%s)));\n",
                        src0_param.param_str, src0_param.param_str);
        }
    }
    else
    {
        shader_addline(buffer, "%s);\n", src0_param.param_str);
    }
}
