
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_sampler {int name; } ;
struct TYPE_2__ {size_t num; struct shader_sampler* array; } ;
struct shader_parser {TYPE_1__ samplers; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline struct shader_sampler *
shader_parser_getsampler(struct shader_parser *sp, const char *sampler_name)
{
 size_t i;
 for (i = 0; i < sp->samplers.num; i++) {
  struct shader_sampler *sampler = sp->samplers.array + i;
  if (strcmp(sampler->name, sampler_name) == 0)
   return sampler;
 }

 return ((void*)0);
}
