
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct gs_effect_param* array; } ;
struct gs_effect_param {TYPE_1__ annotations; TYPE_1__ default_val; TYPE_1__ cur_val; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;

__attribute__((used)) static inline void effect_param_free(struct gs_effect_param *param)
{
 bfree(param->name);

 da_free(param->cur_val);
 da_free(param->default_val);

 size_t i;
 for (i = 0; i < param->annotations.num; i++)
  effect_param_free(param->annotations.array + i);

 da_free(param->annotations);
}
