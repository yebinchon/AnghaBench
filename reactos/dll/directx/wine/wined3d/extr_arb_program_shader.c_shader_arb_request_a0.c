
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_1__* ctx; } ;
struct shader_arb_ctx_priv {int addr_reg; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; struct shader_arb_ctx_priv* backend_data; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,char const*) ;
 int strcmp (int ,char const*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void shader_arb_request_a0(const struct wined3d_shader_instruction *ins, const char *src)
{
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;

    if (!strcmp(priv->addr_reg, src)) return;

    strcpy(priv->addr_reg, src);
    shader_addline(buffer, "ARL A0.x, %s;\n", src);
}
