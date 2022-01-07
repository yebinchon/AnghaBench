
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_effect_pass {int pixelshader; int vertshader; int pixelshader_params; int vertshader_params; int name; } ;


 int bfree (int ) ;
 int da_free (int ) ;
 int gs_shader_destroy (int ) ;

__attribute__((used)) static inline void effect_pass_free(struct gs_effect_pass *pass)
{
 bfree(pass->name);
 da_free(pass->vertshader_params);
 da_free(pass->pixelshader_params);

 gs_shader_destroy(pass->vertshader);
 gs_shader_destroy(pass->pixelshader);
}
