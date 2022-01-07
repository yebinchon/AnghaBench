
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_parser {int cfp; } ;


 scalar_t__ PARSE_SUCCESS ;
 int bfree (char*) ;
 scalar_t__ cf_get_name (int *,char**,char*,char*) ;
 scalar_t__ cf_next_name (int *,char**,char*,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int ep_get_var_specifiers (struct effect_parser*,int*,int*,int*) ;
 int ep_parse_function (struct effect_parser*,char*,char*) ;
 int ep_parse_param (struct effect_parser*,char*,char*,int,int,int) ;
 int report_invalid_func_keyword (struct effect_parser*,char*,int) ;

__attribute__((used)) static void ep_parse_other(struct effect_parser *ep)
{
 bool is_property = 0, is_const = 0, is_uniform = 0;
 char *type = ((void*)0), *name = ((void*)0);

 if (!ep_get_var_specifiers(ep, &is_property, &is_const, &is_uniform))
  goto error;

 if (cf_get_name(&ep->cfp, &type, "type", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_name(&ep->cfp, &name, "name", ";") != PARSE_SUCCESS)
  goto error;
 if (!cf_next_valid_token(&ep->cfp))
  goto error;

 if (cf_token_is(&ep->cfp, "(")) {
  report_invalid_func_keyword(ep, "property", is_property);
  report_invalid_func_keyword(ep, "const", is_const);
  report_invalid_func_keyword(ep, "uniform", is_uniform);

  ep_parse_function(ep, type, name);
  return;
 } else {
  ep_parse_param(ep, type, name, is_property, is_const,
          is_uniform);
  return;
 }

error:
 bfree(type);
 bfree(name);
}
