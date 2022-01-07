
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int * gs_effect_get_param_by_name (int *,char const*) ;
 int gs_effect_set_float (int *,float) ;

__attribute__((used)) static inline void set_eparam(gs_effect_t *effect, const char *name, float val)
{
 gs_eparam_t *param = gs_effect_get_param_by_name(effect, name);
 gs_effect_set_float(param, val);
}
