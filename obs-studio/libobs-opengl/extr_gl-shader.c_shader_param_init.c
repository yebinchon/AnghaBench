
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_shader_param {int dummy; } ;


 int memset (struct gs_shader_param*,int ,int) ;

__attribute__((used)) static inline void shader_param_init(struct gs_shader_param *param)
{
 memset(param, 0, sizeof(struct gs_shader_param));
}
