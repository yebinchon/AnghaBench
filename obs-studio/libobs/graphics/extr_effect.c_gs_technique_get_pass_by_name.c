
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect_pass {int name; } ;
struct TYPE_4__ {size_t num; struct gs_effect_pass* array; } ;
struct TYPE_5__ {TYPE_1__ passes; } ;
typedef TYPE_2__ gs_technique_t ;
typedef struct gs_effect_pass gs_epass_t ;


 scalar_t__ strcmp (int ,char const*) ;

gs_epass_t *gs_technique_get_pass_by_name(const gs_technique_t *technique,
       const char *name)
{
 if (!technique)
  return ((void*)0);
 struct gs_effect_pass *passes = technique->passes.array;

 for (size_t i = 0; i < technique->passes.num; i++) {
  struct gs_effect_pass *g_pass = passes + i;
  if (strcmp(g_pass->name, name) == 0)
   return g_pass;
 }
 return ((void*)0);
}
