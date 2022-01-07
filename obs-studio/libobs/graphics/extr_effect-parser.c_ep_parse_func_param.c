
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_var {int type; int mapping; int name; int var_type; } ;
struct ep_func {int sampler_deps; int struct_deps; } ;
struct effect_parser {int cfp; } ;


 int EP_VAR_IN ;
 int EP_VAR_INOUT ;
 int EP_VAR_OUT ;
 int EP_VAR_UNIFORM ;
 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_get_name (int *,int *,char*,char*) ;
 int cf_next_name (int *,int *,char*,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int da_push_back (int ,int *) ;
 int ep_check_for_keyword (struct effect_parser*,char*,int*) ;
 int * ep_getsampler (struct effect_parser*,int ) ;
 int * ep_getstruct (struct effect_parser*,int ) ;

__attribute__((used)) static inline int ep_parse_func_param(struct effect_parser *ep,
          struct ep_func *func, struct ep_var *var)
{
 int code;
 bool var_type_keyword = 0;

 if (!cf_next_valid_token(&ep->cfp))
  return PARSE_EOF;

 code = ep_check_for_keyword(ep, "in", &var_type_keyword);
 if (code == PARSE_EOF)
  return PARSE_EOF;
 else if (var_type_keyword)
  var->var_type = EP_VAR_IN;

 if (!var_type_keyword) {
  code = ep_check_for_keyword(ep, "inout", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = EP_VAR_INOUT;
 }

 if (!var_type_keyword) {
  code = ep_check_for_keyword(ep, "out", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = EP_VAR_OUT;
 }

 if (!var_type_keyword) {
  code = ep_check_for_keyword(ep, "uniform", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = EP_VAR_UNIFORM;
 }

 code = cf_get_name(&ep->cfp, &var->type, "type", ")");
 if (code != PARSE_SUCCESS)
  return code;

 code = cf_next_name(&ep->cfp, &var->name, "name", ")");
 if (code != PARSE_SUCCESS)
  return code;

 if (!cf_next_valid_token(&ep->cfp))
  return PARSE_EOF;

 if (cf_token_is(&ep->cfp, ":")) {
  code = cf_next_name(&ep->cfp, &var->mapping,
        "mapping specifier", ")");
  if (code != PARSE_SUCCESS)
   return code;

  if (!cf_next_valid_token(&ep->cfp))
   return PARSE_EOF;
 }

 if (ep_getstruct(ep, var->type) != ((void*)0))
  da_push_back(func->struct_deps, &var->type);
 else if (ep_getsampler(ep, var->type) != ((void*)0))
  da_push_back(func->sampler_deps, &var->type);

 return PARSE_SUCCESS;
}
