
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_parser {int cfp; } ;


 int LEX_WARNING ;
 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_adderror (int *,char*,int ,char const*,int *,int *) ;
 int cf_next_valid_token (int *) ;
 int cf_token_is (int *,char const*) ;

__attribute__((used)) static inline int ep_check_for_keyword(struct effect_parser *ep,
           const char *keyword, bool *val)
{
 bool new_val = cf_token_is(&ep->cfp, keyword);
 if (new_val) {
  if (!cf_next_valid_token(&ep->cfp))
   return PARSE_EOF;

  if (new_val && *val)
   cf_adderror(&ep->cfp, "'$1' keyword already specified",
        LEX_WARNING, keyword, ((void*)0), ((void*)0));
  *val = new_val;

  return PARSE_CONTINUE;
 }

 return PARSE_SUCCESS;
}
