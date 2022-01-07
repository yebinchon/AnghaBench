
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect_pass {int dummy; } ;
struct TYPE_4__ {size_t num; struct gs_effect_pass* array; } ;
struct TYPE_5__ {TYPE_1__ passes; } ;
typedef TYPE_2__ gs_technique_t ;
typedef struct gs_effect_pass gs_epass_t ;



gs_epass_t *gs_technique_get_pass_by_idx(const gs_technique_t *technique,
      size_t pass)
{
 if (!technique)
  return ((void*)0);
 struct gs_effect_pass *passes = technique->passes.array;

 if (pass > technique->passes.num)
  return ((void*)0);

 return passes + pass;
}
