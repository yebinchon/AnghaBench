
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct shader_sampler {TYPE_1__ values; TYPE_1__ states; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;

__attribute__((used)) static inline void shader_sampler_free(struct shader_sampler *ss)
{
 size_t i;
 for (i = 0; i < ss->states.num; i++)
  bfree(ss->states.array[i]);
 for (i = 0; i < ss->values.num; i++)
  bfree(ss->values.array[i]);

 bfree(ss->name);
 da_free(ss->states);
 da_free(ss->values);
}
