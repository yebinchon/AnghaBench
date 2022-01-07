
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_shader_param {int def_value; int cur_value; int name; } ;


 int bfree (int ) ;
 int da_free (int ) ;

__attribute__((used)) static inline void shader_param_free(struct gs_shader_param *param)
{
 bfree(param->name);
 da_free(param->cur_value);
 da_free(param->def_value);
}
