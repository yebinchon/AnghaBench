
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_sampler {int name; } ;
struct effect_parser {int samplers; int cfp; } ;
struct cf_token {int str; } ;


 int PARSE_EOF ;
 scalar_t__ PARSE_SUCCESS ;
 scalar_t__ cf_next_name (int *,int *,char*,char*) ;
 scalar_t__ cf_next_token_should_be (int *,char*,char*,int *) ;
 int cf_peek_valid_token (int *,struct cf_token*) ;
 int da_push_back (int ,struct ep_sampler*) ;
 int ep_parse_sampler_state_item (struct effect_parser*,struct ep_sampler*) ;
 int ep_sampler_free (struct ep_sampler*) ;
 int ep_sampler_init (struct ep_sampler*) ;
 scalar_t__ strref_cmp (int *,char*) ;

__attribute__((used)) static void ep_parse_sampler_state(struct effect_parser *ep)
{
 struct ep_sampler eps;
 struct cf_token peek;
 ep_sampler_init(&eps);

 if (cf_next_name(&ep->cfp, &eps.name, "name", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&ep->cfp, "{", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;

 if (!cf_peek_valid_token(&ep->cfp, &peek))
  goto error;

 while (strref_cmp(&peek.str, "}") != 0) {
  int ret = ep_parse_sampler_state_item(ep, &eps);
  if (ret == PARSE_EOF)
   goto error;

  if (!cf_peek_valid_token(&ep->cfp, &peek))
   goto error;
 }

 if (cf_next_token_should_be(&ep->cfp, "}", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&ep->cfp, ";", ((void*)0), ((void*)0)) != PARSE_SUCCESS)
  goto error;

 da_push_back(ep->samplers, &eps);
 return;

error:
 ep_sampler_free(&eps);
}
