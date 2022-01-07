
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_4__* ctx; TYPE_3__* src; } ;
struct TYPE_8__ {int buffer; } ;
struct TYPE_6__ {TYPE_1__* idx; } ;
struct TYPE_7__ {TYPE_2__ reg; } ;
struct TYPE_5__ {unsigned int offset; } ;


 int FIXME (char*,unsigned int) ;
 scalar_t__ WINED3DSIH_CUT ;
 int shader_addline (int ,char*) ;

__attribute__((used)) static void shader_glsl_cut(const struct wined3d_shader_instruction *ins)
{
    unsigned int stream = ins->handler_idx == WINED3DSIH_CUT ? 0 : ins->src[0].reg.idx[0].offset;

    if (!stream)
        shader_addline(ins->ctx->buffer, "EndPrimitive();\n");
    else
        FIXME("Unhandled primitive stream %u.\n", stream);
}
