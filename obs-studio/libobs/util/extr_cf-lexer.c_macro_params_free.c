
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct macro_params {TYPE_1__ params; } ;


 int da_free (TYPE_1__) ;
 int macro_param_free (scalar_t__) ;

__attribute__((used)) static inline void macro_params_free(struct macro_params *params)
{
 size_t i;
 for (i = 0; i < params->params.num; i++)
  macro_param_free(params->params.array + i);
 da_free(params->params);
}
