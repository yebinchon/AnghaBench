
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_parser {int cfp; } ;


 scalar_t__ PARSE_SUCCESS ;
 int bfree (char*) ;
 scalar_t__ cf_get_name (int *,char**,char*,char*) ;
 scalar_t__ cf_next_name (int *,char**,char*,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int report_invalid_func_keyword (struct shader_parser*,char*,int) ;
 int sp_get_var_specifiers (struct shader_parser*,int*,int*) ;
 int sp_parse_function (struct shader_parser*,char*,char*) ;
 int sp_parse_param (struct shader_parser*,char*,char*,int,int) ;

__attribute__((used)) static void sp_parse_other(struct shader_parser *sp)
{
 bool is_const = 0, is_uniform = 0;
 char *type = ((void*)0), *name = ((void*)0);

 if (!sp_get_var_specifiers(sp, &is_const, &is_uniform))
  goto error;

 if (cf_get_name(&sp->cfp, &type, "type", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_name(&sp->cfp, &name, "name", ";") != PARSE_SUCCESS)
  goto error;

 if (!cf_next_valid_token(&sp->cfp))
  goto error;

 if (cf_token_is(&sp->cfp, "(")) {
  report_invalid_func_keyword(sp, "const", is_const);
  report_invalid_func_keyword(sp, "uniform", is_uniform);

  sp_parse_function(sp, type, name);
  return;
 } else {
  sp_parse_param(sp, type, name, is_const, is_uniform);
  return;
 }

error:
 bfree(type);
 bfree(name);
}
