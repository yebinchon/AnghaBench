
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pass_shaderparam {TYPE_1__* eparam; } ;
struct darray {size_t num; struct pass_shaderparam* array; } ;
struct TYPE_2__ {int changed; } ;



__attribute__((used)) static inline void reset_params(struct darray *shaderparams)
{
 struct pass_shaderparam *params = shaderparams->array;
 size_t i;

 for (i = 0; i < shaderparams->num; i++)
  params[i].eparam->changed = 0;
}
