
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_4__* src; TYPE_1__* ctx; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; int in_main_func; } ;
struct TYPE_6__ {TYPE_3__* idx; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_5__ {struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;


 scalar_t__ ARB ;
 int FALSE ;
 int shader_addline (struct wined3d_string_buffer*,char*,int ) ;

__attribute__((used)) static void shader_hw_label(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;

    priv->in_main_func = FALSE;



    if(priv->target_version == ARB) return;

    shader_addline(buffer, "l%u:\n", ins->src[0].reg.idx[0].offset);
}
