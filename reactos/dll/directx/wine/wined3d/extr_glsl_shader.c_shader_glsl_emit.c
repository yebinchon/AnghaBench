
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_2__* ctx; TYPE_5__* src; } ;
struct TYPE_9__ {TYPE_3__* idx; } ;
struct TYPE_10__ {TYPE_4__ reg; } ;
struct TYPE_8__ {unsigned int offset; } ;
struct TYPE_7__ {int buffer; TYPE_1__* gl_info; } ;
struct TYPE_6__ {int * supported; } ;


 size_t ARB_CLIP_CONTROL ;
 int FIXME (char*,unsigned int) ;
 scalar_t__ WINED3DSIH_EMIT ;
 int shader_addline (int ,char*) ;
 int shader_glsl_fixup_position (int ) ;

__attribute__((used)) static void shader_glsl_emit(const struct wined3d_shader_instruction *ins)
{
    unsigned int stream = ins->handler_idx == WINED3DSIH_EMIT ? 0 : ins->src[0].reg.idx[0].offset;

    shader_addline(ins->ctx->buffer, "setup_gs_output(gs_out);\n");
    if (!ins->ctx->gl_info->supported[ARB_CLIP_CONTROL])
        shader_glsl_fixup_position(ins->ctx->buffer);

    if (!stream)
        shader_addline(ins->ctx->buffer, "EmitVertex();\n");
    else
        FIXME("Unhandled primitive stream %u.\n", stream);
}
