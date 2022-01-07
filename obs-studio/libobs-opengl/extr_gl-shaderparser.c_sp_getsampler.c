
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_sampler {int name; } ;
struct TYPE_3__ {size_t num; struct shader_sampler* array; } ;
struct TYPE_4__ {TYPE_1__ samplers; } ;
struct gl_shader_parser {TYPE_2__ parser; } ;
struct cf_token {int str; } ;


 scalar_t__ strref_cmp (int *,int ) ;

__attribute__((used)) static inline size_t sp_getsampler(struct gl_shader_parser *glsp,
       struct cf_token *token)
{
 size_t i;
 for (i = 0; i < glsp->parser.samplers.num; i++) {
  struct shader_sampler *sampler =
   glsp->parser.samplers.array + i;
  if (strref_cmp(&token->str, sampler->name) == 0)
   return i;
 }

 return -1;
}
