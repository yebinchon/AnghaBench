
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {char* type; } ;
struct effect_parser {int cfp; } ;


 int LEX_ERROR ;
 int PARSE_SUCCESS ;
 int cf_adderror (int *,char*,int ,int *,int *,int *) ;
 int cf_next_token_should_be (int *,char*,char*,int *) ;
 int ep_parse_param_assign_intfloat (struct effect_parser*,struct ep_param*,int) ;

__attribute__((used)) static inline int ep_parse_param_assign_intfloat_array(struct effect_parser *ep,
             struct ep_param *param,
             bool is_float)
{
 const char *intfloat_type = param->type + (is_float ? 5 : 3);
 int intfloat_count = 0, code, i;



 if (intfloat_type[0] < '1' || intfloat_type[0] > '4')
  cf_adderror(&ep->cfp, "Invalid row count", LEX_ERROR, ((void*)0),
       ((void*)0), ((void*)0));

 intfloat_count = intfloat_type[0] - '0';

 if (intfloat_type[1] == 'x') {
  if (intfloat_type[2] < '1' || intfloat_type[2] > '4')
   cf_adderror(&ep->cfp, "Invalid column count", LEX_ERROR,
        ((void*)0), ((void*)0), ((void*)0));

  intfloat_count *= intfloat_type[2] - '0';
 }



 code = cf_next_token_should_be(&ep->cfp, "{", ";", ((void*)0));
 if (code != PARSE_SUCCESS)
  return code;

 for (i = 0; i < intfloat_count; i++) {
  char *next = ((i + 1) < intfloat_count) ? "," : "}";

  code = ep_parse_param_assign_intfloat(ep, param, is_float);
  if (code != PARSE_SUCCESS)
   return code;

  code = cf_next_token_should_be(&ep->cfp, next, ";", ((void*)0));
  if (code != PARSE_SUCCESS)
   return code;
 }

 return PARSE_SUCCESS;
}
