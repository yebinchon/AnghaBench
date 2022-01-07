
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep_sampler {int name; } ;
struct TYPE_2__ {size_t num; struct ep_sampler* array; } ;
struct effect_parser {TYPE_1__ samplers; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static inline struct ep_sampler *ep_getsampler(struct effect_parser *ep,
            const char *name)
{
 size_t i;
 for (i = 0; i < ep->samplers.num; i++) {
  if (strcmp(name, ep->samplers.array[i].name) == 0)
   return ep->samplers.array + i;
 }

 return ((void*)0);
}
