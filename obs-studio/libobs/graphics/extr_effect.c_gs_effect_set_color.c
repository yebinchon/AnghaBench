
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec4 {int dummy; } ;
typedef int gs_eparam_t ;


 int effect_setval_inline (int *,struct vec4*,int) ;
 int vec4_from_bgra (struct vec4*,int ) ;

void gs_effect_set_color(gs_eparam_t *param, uint32_t argb)
{
 struct vec4 v_color;
 vec4_from_bgra(&v_color, argb);
 effect_setval_inline(param, &v_color, sizeof(struct vec4));
}
