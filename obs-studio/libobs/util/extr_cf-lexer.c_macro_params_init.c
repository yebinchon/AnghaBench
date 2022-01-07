
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_params {int params; } ;


 int da_init (int ) ;

__attribute__((used)) static inline void macro_params_init(struct macro_params *params)
{
 da_init(params->params);
}
