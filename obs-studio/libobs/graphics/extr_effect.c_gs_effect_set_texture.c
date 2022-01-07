
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_texture_t ;
typedef int gs_eparam_t ;


 int effect_setval_inline (int *,int **,int) ;

void gs_effect_set_texture(gs_eparam_t *param, gs_texture_t *val)
{
 effect_setval_inline(param, &val, sizeof(gs_texture_t *));
}
