
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_eparam_t ;


 int effect_setval_inline (int *,void const*,size_t) ;

void gs_effect_set_val(gs_eparam_t *param, const void *val, size_t size)
{
 effect_setval_inline(param, val, size);
}
