
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_var {size_t gl_sampler_id; char* name; } ;
struct cf_parser {int cur_token; } ;
struct TYPE_2__ {struct cf_parser cfp; } ;
struct gl_shader_parser {int gl_string; TYPE_1__ parser; } ;


 int cf_next_token (struct cf_parser*) ;
 int cf_token_is (struct cf_parser*,char*) ;
 int dstr_cat (int *,char const*) ;
 size_t sp_getsampler (struct gl_shader_parser*,int ) ;

__attribute__((used)) static inline bool gl_write_texture_call(struct gl_shader_parser *glsp,
      struct shader_var *var,
      const char *call, bool sampler)
{
 struct cf_parser *cfp = &glsp->parser.cfp;

 if (!cf_next_token(cfp))
  return 0;
 if (!cf_token_is(cfp, "("))
  return 0;

 if (sampler) {
  if (!cf_next_token(cfp))
   return 0;
  const size_t sampler_id = sp_getsampler(glsp, cfp->cur_token);
  if (sampler_id == (size_t)-1)
   return 0;
  if (!cf_next_token(cfp))
   return 0;
  if (!cf_token_is(cfp, ","))
   return 0;

  var->gl_sampler_id = sampler_id;
 }

 dstr_cat(&glsp->gl_string, call);
 dstr_cat(&glsp->gl_string, "(");
 dstr_cat(&glsp->gl_string, var->name);
 dstr_cat(&glsp->gl_string, ", ");
 return 1;
}
