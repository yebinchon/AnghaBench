
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_effect {struct gs_effect* next; int effect_path; } ;
struct TYPE_2__ {struct gs_effect* first_effect; } ;


 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__* thread_graphics ;

__attribute__((used)) static inline struct gs_effect *find_cached_effect(const char *filename)
{
 struct gs_effect *effect = thread_graphics->first_effect;

 while (effect) {
  if (strcmp(effect->effect_path, filename) == 0)
   break;
  effect = effect->next;
 }

 return effect;
}
