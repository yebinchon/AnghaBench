
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* ctx; } ;
struct wined3d_shader {int backend_data; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; int cur_vs_args; scalar_t__ in_main_func; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {TYPE_1__ shader_version; } ;
struct TYPE_5__ {int gl_info; TYPE_3__* reg_maps; struct wined3d_shader* shader; struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ ARB ;
 int shader_addline (struct wined3d_string_buffer*,char*) ;
 scalar_t__ shader_is_vshader_version (int ) ;
 int vshader_add_footer (struct shader_arb_ctx_priv*,int ,int ,TYPE_3__*,int ,struct wined3d_string_buffer*) ;

__attribute__((used)) static void shader_hw_ret(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    const struct wined3d_shader *shader = ins->ctx->shader;
    BOOL vshader = shader_is_vshader_version(ins->ctx->reg_maps->shader_version.type);

    if(priv->target_version == ARB) return;

    if(vshader)
    {
        if (priv->in_main_func) vshader_add_footer(priv, shader->backend_data,
                priv->cur_vs_args, ins->ctx->reg_maps, ins->ctx->gl_info, buffer);
    }

    shader_addline(buffer, "RET;\n");
}
