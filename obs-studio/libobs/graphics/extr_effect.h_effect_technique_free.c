
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct gs_effect_technique {int name; TYPE_1__ passes; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int effect_pass_free (scalar_t__) ;

__attribute__((used)) static inline void effect_technique_free(struct gs_effect_technique *t)
{
 size_t i;
 for (i = 0; i < t->passes.num; i++)
  effect_pass_free(t->passes.array + i);

 da_free(t->passes);
 bfree(t->name);
}
