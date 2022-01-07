
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_shader_instruction {scalar_t__ handler_idx; TYPE_3__* src; TYPE_6__* ctx; } ;
struct TYPE_12__ {int buffer; TYPE_5__* reg_maps; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_11__ {TYPE_4__ shader_version; } ;
struct TYPE_8__ {TYPE_1__* idx; } ;
struct TYPE_9__ {TYPE_2__ reg; } ;
struct TYPE_7__ {int offset; } ;


 scalar_t__ WINED3DSIH_IMM_ATOMIC_ALLOC ;
 int shader_addline (int ,char*,char const*,char const*,int ) ;
 int shader_glsl_append_dst (int ,struct wined3d_shader_instruction const*) ;
 char* shader_glsl_get_prefix (int ) ;

__attribute__((used)) static void shader_glsl_uav_counter(const struct wined3d_shader_instruction *ins)
{
    const char *prefix = shader_glsl_get_prefix(ins->ctx->reg_maps->shader_version.type);
    const char *op;

    if (ins->handler_idx == WINED3DSIH_IMM_ATOMIC_ALLOC)
        op = "atomicCounterIncrement";
    else
        op = "atomicCounterDecrement";

    shader_glsl_append_dst(ins->ctx->buffer, ins);
    shader_addline(ins->ctx->buffer, "%s(%s_counter%u));\n", op, prefix, ins->src[0].reg.idx[0].offset);
}
