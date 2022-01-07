
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct darray {int dummy; } ;
struct TYPE_4__ {struct darray da; } ;
struct TYPE_3__ {struct darray da; } ;
struct ep_pass {TYPE_2__ fragment_program; TYPE_1__ vertex_program; } ;
struct effect_parser {int cfp; } ;


 int LEX_WARNING ;
 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 scalar_t__ PARSE_SUCCESS ;
 int cf_adderror (int *,char*,int ,int *,int *,int *) ;
 int cf_adderror_syntax_error (int *) ;
 int cf_go_to_valid_token (int *,char*,char*) ;
 scalar_t__ cf_next_token_should_be (int *,char*,char*,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int ep_parse_pass_command_call (struct effect_parser*,struct darray*) ;

__attribute__((used)) static int ep_parse_pass_command(struct effect_parser *ep, struct ep_pass *pass)
{
 struct darray *call;

 if (!cf_next_valid_token(&ep->cfp))
  return PARSE_EOF;

 if (cf_token_is(&ep->cfp, "vertex_shader") ||
     cf_token_is(&ep->cfp, "vertex_program")) {
  call = &pass->vertex_program.da;

 } else if (cf_token_is(&ep->cfp, "pixel_shader") ||
     cf_token_is(&ep->cfp, "pixel_program")) {
  call = &pass->fragment_program.da;

 } else {
  cf_adderror_syntax_error(&ep->cfp);
  if (!cf_go_to_valid_token(&ep->cfp, ";", "}"))
   return PARSE_EOF;
  return PARSE_CONTINUE;
 }

 if (cf_next_token_should_be(&ep->cfp, "=", ";", "}") != PARSE_SUCCESS)
  return PARSE_CONTINUE;

 if (!cf_next_valid_token(&ep->cfp))
  return PARSE_EOF;
 if (cf_token_is(&ep->cfp, "compile")) {
  cf_adderror(&ep->cfp, "compile keyword not necessary",
       LEX_WARNING, ((void*)0), ((void*)0), ((void*)0));
  if (!cf_next_valid_token(&ep->cfp))
   return PARSE_EOF;
 }

 return ep_parse_pass_command_call(ep, call);
}
