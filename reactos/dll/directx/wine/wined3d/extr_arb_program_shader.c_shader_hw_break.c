
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; } ;
struct TYPE_8__ {int loop; } ;
struct control_frame {TYPE_4__ no; } ;
struct TYPE_7__ {TYPE_2__* reg_maps; int backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ shader_version; } ;
typedef scalar_t__ BOOL ;


 struct control_frame* find_last_loop (int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 scalar_t__ shader_is_vshader_version (int ) ;

__attribute__((used)) static void shader_hw_break(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    const struct control_frame *control_frame = find_last_loop(ins->ctx->backend_data);
    BOOL vshader = shader_is_vshader_version(ins->ctx->reg_maps->shader_version.type);

    if(vshader)
    {
        shader_addline(buffer, "BRA loop_%u_end;\n", control_frame->no.loop);
    }
    else
    {
        shader_addline(buffer, "BRK;\n");
    }
}
