
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_effect_t ;


 int upload_parameters (int *,int) ;

void gs_effect_update_params(gs_effect_t *effect)
{
 if (effect)
  upload_parameters(effect, 1);
}
