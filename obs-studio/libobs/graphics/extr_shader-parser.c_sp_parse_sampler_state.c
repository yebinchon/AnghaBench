
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_sampler {int name; } ;
struct shader_parser {int samplers; int cfp; } ;
struct cf_token {int str; } ;


 int PARSE_EOF ;
 scalar_t__ PARSE_SUCCESS ;
 scalar_t__ cf_next_name (int *,int *,char*,char*) ;
 scalar_t__ cf_next_token_should_be (int *,char*,char*,int *) ;
 int cf_peek_valid_token (int *,struct cf_token*) ;
 int da_push_back (int ,struct shader_sampler*) ;
 int shader_sampler_free (struct shader_sampler*) ;
 int shader_sampler_init (struct shader_sampler*) ;
 int sp_parse_sampler_state_item (struct shader_parser*,struct shader_sampler*) ;
 scalar_t__ strref_cmp (int *,char*) ;

__attribute__((used)) static void sp_parse_sampler_state(struct shader_parser *sp)
{
 struct shader_sampler ss;
 struct cf_token peek;
 shader_sampler_init(&ss);

 if (cf_next_name(&sp->cfp, &ss.name, "name", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&sp->cfp, "{", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;

 if (!cf_peek_valid_token(&sp->cfp, &peek))
  goto error;

 while (strref_cmp(&peek.str, "}") != 0) {
  int ret = sp_parse_sampler_state_item(sp, &ss);
  if (ret == PARSE_EOF)
   goto error;

  if (!cf_peek_valid_token(&sp->cfp, &peek))
   goto error;
 }

 if (cf_next_token_should_be(&sp->cfp, "}", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&sp->cfp, ";", ((void*)0), ((void*)0)) != PARSE_SUCCESS)
  goto error;

 da_push_back(sp->samplers, &ss);
 return;

error:
 shader_sampler_free(&ss);
}
