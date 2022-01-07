
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;
typedef int gs_eparam_t ;


 int effect_setval_inline (int *,struct vec2 const*,int) ;

void gs_effect_set_vec2(gs_eparam_t *param, const struct vec2 *val)
{
 effect_setval_inline(param, val, sizeof(struct vec2));
}
