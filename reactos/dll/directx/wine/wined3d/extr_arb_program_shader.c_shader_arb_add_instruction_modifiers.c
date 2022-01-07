
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {struct wined3d_shader_dst_param* dst; int dst_count; TYPE_1__* ctx; } ;
struct wined3d_shader_dst_param {size_t shift; int reg; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int shader_addline (struct wined3d_string_buffer*,char*,int ,char*,char*,char*,int ) ;
 int shader_arb_get_modifier (struct wined3d_shader_instruction const*) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,int *,char*,int *) ;
 int shader_arb_get_write_mask (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;
 int * shift_tab ;

__attribute__((used)) static void shader_arb_add_instruction_modifiers(const struct wined3d_shader_instruction *ins) {
    DWORD shift;
    char write_mask[20], regstr[50];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    BOOL is_color = FALSE;
    const struct wined3d_shader_dst_param *dst;

    if (!ins->dst_count) return;

    dst = &ins->dst[0];
    shift = dst->shift;
    if (!shift) return;

    shader_arb_get_write_mask(ins, dst, write_mask);
    shader_arb_get_register_name(ins, &dst->reg, regstr, &is_color);





    shader_addline(buffer, "MUL%s %s%s, %s, %s;\n", shader_arb_get_modifier(ins),
                   regstr, write_mask, regstr, shift_tab[shift]);
}
