
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int default_val; } ;
struct effect_parser {int cfp; } ;


 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_adderror_expecting (int *,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int da_push_back_array (int ,long*,int) ;

__attribute__((used)) static inline int ep_parse_param_assign_bool(struct effect_parser *ep,
          struct ep_param *param)
{
 if (!cf_next_valid_token(&ep->cfp))
  return PARSE_EOF;

 if (cf_token_is(&ep->cfp, "true")) {
  long l = 1;
  da_push_back_array(param->default_val, &l, sizeof(long));
  return PARSE_SUCCESS;
 } else if (cf_token_is(&ep->cfp, "false")) {
  long l = 0;
  da_push_back_array(param->default_val, &l, sizeof(long));
  return PARSE_SUCCESS;
 }

 cf_adderror_expecting(&ep->cfp, "true or false");

 return PARSE_EOF;
}
