
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_instruction {int dummy; } ;
struct wined3d_shader_dst_param {int reg; } ;
typedef int BOOL ;


 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,int *,char*,int *) ;
 int shader_arb_get_write_mask (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void shader_arb_get_dst_param(const struct wined3d_shader_instruction *ins,
        const struct wined3d_shader_dst_param *wined3d_dst, char *str)
{
    char register_name[255];
    char write_mask[6];
    BOOL is_color;

    shader_arb_get_register_name(ins, &wined3d_dst->reg, register_name, &is_color);
    strcpy(str, register_name);

    shader_arb_get_write_mask(ins, wined3d_dst, write_mask);
    strcat(str, write_mask);
}
