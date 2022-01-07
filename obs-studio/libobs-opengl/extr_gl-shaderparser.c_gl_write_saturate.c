
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {struct cf_token* cur_token; } ;
struct TYPE_2__ {struct cf_parser cfp; } ;
struct gl_shader_parser {int gl_string; TYPE_1__ parser; } ;
struct cf_token {int dummy; } ;


 int cf_next_token (struct cf_parser*) ;
 int cf_token_is (struct cf_parser*,char*) ;
 int dstr_cat (int *,char*) ;
 int gl_write_function_contents (struct gl_shader_parser*,struct cf_token**,char*) ;

__attribute__((used)) static bool gl_write_saturate(struct gl_shader_parser *glsp,
         struct cf_token **p_token)
{
 struct cf_parser *cfp = &glsp->parser.cfp;
 cfp->cur_token = *p_token;

 if (!cf_next_token(cfp))
  return 0;
 if (!cf_token_is(cfp, "("))
  return 0;

 dstr_cat(&glsp->gl_string, "clamp");
 gl_write_function_contents(glsp, &cfp->cur_token, ")");
 dstr_cat(&glsp->gl_string, ", 0.0, 1.0)");

 *p_token = cfp->cur_token;
 return 1;
}
