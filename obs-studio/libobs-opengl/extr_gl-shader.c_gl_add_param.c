
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int default_val; int gl_sampler_id; int type; int name; int array_count; } ;
struct gs_shader_param {scalar_t__ type; int changed; int def_value; int cur_value; scalar_t__ texture_id; int sampler_id; struct gs_shader* shader; int name; int array_count; int member_0; } ;
struct gs_shader {int params; } ;
typedef int GLint ;


 scalar_t__ GS_SHADER_PARAM_TEXTURE ;
 int bstrdup (int ) ;
 int da_copy (int ,int ) ;
 int da_move (int ,int ) ;
 int da_push_back (int ,struct gs_shader_param*) ;
 scalar_t__ get_shader_param_type (int ) ;

__attribute__((used)) static bool gl_add_param(struct gs_shader *shader, struct shader_var *var,
    GLint *texture_id)
{
 struct gs_shader_param param = {0};

 param.array_count = var->array_count;
 param.name = bstrdup(var->name);
 param.shader = shader;
 param.type = get_shader_param_type(var->type);

 if (param.type == GS_SHADER_PARAM_TEXTURE) {
  param.sampler_id = var->gl_sampler_id;
  param.texture_id = (*texture_id)++;
 } else {
  param.changed = 1;
 }

 da_move(param.def_value, var->default_val);
 da_copy(param.cur_value, param.def_value);

 da_push_back(shader->params, &param);
 return 1;
}
