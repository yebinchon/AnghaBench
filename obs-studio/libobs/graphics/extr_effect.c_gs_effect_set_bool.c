
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_eparam_t ;


 int effect_setval_inline (int *,int*,int) ;

void gs_effect_set_bool(gs_eparam_t *param, bool val)
{
 int b_val = (int)val;
 effect_setval_inline(param, &b_val, sizeof(int));
}
