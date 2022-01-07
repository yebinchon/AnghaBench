
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_shader_input_sysval_semantic { ____Placeholder_wined3d_shader_input_sysval_semantic } wined3d_shader_input_sysval_semantic ;
struct TYPE_3__ {int sysval_semantic; int sysval_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,int) ;
 TYPE_1__* shader_input_sysval_semantic_names ;

__attribute__((used)) static void shader_dump_shader_input_sysval_semantic(struct wined3d_string_buffer *buffer,
        enum wined3d_shader_input_sysval_semantic semantic)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(shader_input_sysval_semantic_names); ++i)
    {
        if (shader_input_sysval_semantic_names[i].sysval_semantic == semantic)
        {
            shader_addline(buffer, "%s", shader_input_sysval_semantic_names[i].sysval_name);
            return;
        }
    }

    shader_addline(buffer, "unknown_shader_input_sysval_semantic(%#x)", semantic);
}
