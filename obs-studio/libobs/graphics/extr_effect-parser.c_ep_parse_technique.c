
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_technique {int passes; int name; } ;
struct ep_pass {int passes; int name; } ;
struct effect_parser {int cfp; int techniques; } ;



 scalar_t__ PARSE_SUCCESS ;

 int cf_adderror_expecting (int *,char*) ;
 int cf_go_to_token (int *,char*,int *) ;
 scalar_t__ cf_next_name (int *,int *,char*,char*) ;
 int cf_next_token (int *) ;
 int cf_next_valid_token (int *) ;
 int cf_token_is (int *,char*) ;
 int da_push_back (int ,struct ep_technique*) ;
 int ep_parse_pass (struct effect_parser*,struct ep_technique*) ;
 int ep_pass_free (struct ep_technique*) ;
 int ep_pass_init (struct ep_technique*) ;
 int ep_technique_free (struct ep_technique*) ;
 int ep_technique_init (struct ep_technique*) ;

__attribute__((used)) static void ep_parse_technique(struct effect_parser *ep)
{
 struct ep_technique ept;
 ep_technique_init(&ept);

 if (cf_next_name(&ep->cfp, &ept.name, "name", ";") != PARSE_SUCCESS)
  goto error;

 if (!cf_next_valid_token(&ep->cfp))
  return;

 if (!cf_token_is(&ep->cfp, "{")) {
  if (!cf_go_to_token(&ep->cfp, ";", ((void*)0))) {
   cf_adderror_expecting(&ep->cfp, ";");
   return;
  }

  cf_adderror_expecting(&ep->cfp, "{");
  goto error;
 }
 if (!cf_next_valid_token(&ep->cfp))
  goto error;

 while (!cf_token_is(&ep->cfp, "}")) {
  struct ep_pass pass;
  ep_pass_init(&pass);

  switch (ep_parse_pass(ep, &pass)) {
  case 128:
   ep_pass_free(&pass);
   if (!cf_go_to_token(&ep->cfp, "}", ((void*)0)))
    goto error;
   continue;
  case 129:
   ep_pass_free(&pass);
   goto error;
  }

  da_push_back(ept.passes, &pass);

  if (!cf_next_valid_token(&ep->cfp))
   goto error;
 }


 cf_next_token(&ep->cfp);

 da_push_back(ep->techniques, &ept);
 return;

error:
 cf_next_token(&ep->cfp);
 ep_technique_free(&ept);
}
