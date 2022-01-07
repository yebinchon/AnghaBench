
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_1__* dst; TYPE_2__* ctx; } ;
struct color_fixup_desc {int dummy; } ;
struct TYPE_6__ {int data_type; } ;
struct TYPE_5__ {int buffer; } ;
struct TYPE_4__ {int write_mask; TYPE_3__ reg; } ;
typedef int BOOL ;


 int shader_glsl_color_correction_ext (int ,char*,int ,struct color_fixup_desc) ;
 int shader_glsl_get_register_name (TYPE_3__*,int ,char*,int *,struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_color_correction(const struct wined3d_shader_instruction *ins, struct color_fixup_desc fixup)
{
    char reg_name[256];
    BOOL is_color;

    shader_glsl_get_register_name(&ins->dst[0].reg, ins->dst[0].reg.data_type, reg_name, &is_color, ins);
    shader_glsl_color_correction_ext(ins->ctx->buffer, reg_name, ins->dst[0].write_mask, fixup);
}
