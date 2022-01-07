
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_version {int major; } ;
struct wined3d_shader_instruction {TYPE_4__* ctx; } ;
struct TYPE_8__ {int buffer; TYPE_3__* state; TYPE_2__* shader; } ;
struct TYPE_7__ {int in_subroutine; } ;
struct TYPE_5__ {struct wined3d_shader_version shader_version; } ;
struct TYPE_6__ {TYPE_1__ reg_maps; } ;


 int shader_addline (int ,char*) ;
 int shader_glsl_generate_shader_epilogue (TYPE_4__*) ;

__attribute__((used)) static void shader_glsl_ret(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_version *version = &ins->ctx->shader->reg_maps.shader_version;

    if (version->major >= 4 && !ins->ctx->state->in_subroutine)
    {
        shader_glsl_generate_shader_epilogue(ins->ctx);
        shader_addline(ins->ctx->buffer, "return;\n");
    }
}
