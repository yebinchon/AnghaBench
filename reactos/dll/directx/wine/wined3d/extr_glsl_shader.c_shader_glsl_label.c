
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_shader_instruction {TYPE_4__* ctx; TYPE_3__* src; } ;
struct TYPE_10__ {int in_subroutine; } ;
struct TYPE_9__ {TYPE_5__* state; int buffer; } ;
struct TYPE_7__ {TYPE_1__* idx; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct TYPE_6__ {int offset; } ;


 int TRUE ;
 int shader_addline (int ,char*,...) ;

__attribute__((used)) static void shader_glsl_label(const struct wined3d_shader_instruction *ins)
{
    shader_addline(ins->ctx->buffer, "}\n");
    shader_addline(ins->ctx->buffer, "void subroutine%u()\n{\n", ins->src[0].reg.idx[0].offset);


    ins->ctx->state->in_subroutine = TRUE;
}
