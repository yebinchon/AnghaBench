
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct ep_sampler {TYPE_1__ values; TYPE_1__ states; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;

__attribute__((used)) static inline void ep_sampler_free(struct ep_sampler *eps)
{
 size_t i;

 for (i = 0; i < eps->states.num; i++)
  bfree(eps->states.array[i]);
 for (i = 0; i < eps->values.num; i++)
  bfree(eps->values.array[i]);

 bfree(eps->name);
 da_free(eps->states);
 da_free(eps->values);
}
