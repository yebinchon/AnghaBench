
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_eparam_t ;


 int effect_setval_inline (int *,float*,int) ;

void gs_effect_set_float(gs_eparam_t *param, float val)
{
 effect_setval_inline(param, &val, sizeof(float));
}
