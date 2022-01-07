
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_parser_state {int current_loop_depth; int current_loop_reg; } ;
struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_1__* ctx; } ;
struct TYPE_2__ {int buffer; struct wined3d_shader_parser_state* state; } ;


 scalar_t__ WINED3DSIH_ENDLOOP ;
 scalar_t__ WINED3DSIH_ENDREP ;
 int shader_addline (int ,char*) ;

__attribute__((used)) static void shader_glsl_end(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_shader_parser_state *state = ins->ctx->state;

    shader_addline(ins->ctx->buffer, "}\n");

    if (ins->handler_idx == WINED3DSIH_ENDLOOP)
    {
        --state->current_loop_depth;
        --state->current_loop_reg;
    }

    if (ins->handler_idx == WINED3DSIH_ENDREP)
    {
        --state->current_loop_depth;
    }
}
