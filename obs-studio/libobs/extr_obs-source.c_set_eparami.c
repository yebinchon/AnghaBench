
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int * gs_effect_get_param_by_name (int *,char const*) ;
 int gs_effect_set_int (int *,int) ;

__attribute__((used)) static inline void set_eparami(gs_effect_t *effect, const char *name, int val)
{
 gs_eparam_t *param = gs_effect_get_param_by_name(effect, name);
 gs_effect_set_int(param, val);
}
