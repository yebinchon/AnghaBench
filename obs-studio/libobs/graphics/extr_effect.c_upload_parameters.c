
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect {TYPE_3__* cur_pass; } ;
struct darray {int dummy; } ;
struct TYPE_5__ {struct darray da; } ;
struct TYPE_4__ {struct darray da; } ;
struct TYPE_6__ {TYPE_2__ pixelshader_params; TYPE_1__ vertshader_params; } ;


 int reset_params (struct darray*) ;
 int upload_shader_params (struct darray*,int) ;

__attribute__((used)) static inline void upload_parameters(struct gs_effect *effect,
         bool changed_only)
{
 struct darray *vshader_params, *pshader_params;

 if (!effect->cur_pass)
  return;

 vshader_params = &effect->cur_pass->vertshader_params.da;
 pshader_params = &effect->cur_pass->pixelshader_params.da;

 upload_shader_params(vshader_params, changed_only);
 upload_shader_params(pshader_params, changed_only);
 reset_params(vshader_params);
 reset_params(pshader_params);
}
