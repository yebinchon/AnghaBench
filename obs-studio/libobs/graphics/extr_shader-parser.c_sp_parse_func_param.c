
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int mapping; int name; int type; int var_type; } ;
struct shader_parser {int cfp; } ;


 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int SHADER_VAR_IN ;
 int SHADER_VAR_INOUT ;
 int SHADER_VAR_OUT ;
 int SHADER_VAR_UNIFORM ;
 int cf_get_name (int *,int *,char*,char*) ;
 int cf_next_name (int *,int *,char*,char*) ;
 int cf_next_valid_token (int *) ;
 scalar_t__ cf_token_is (int *,char*) ;
 int sp_check_for_keyword (struct shader_parser*,char*,int*) ;

__attribute__((used)) static inline int sp_parse_func_param(struct shader_parser *sp,
          struct shader_var *var)
{
 int code;
 bool var_type_keyword = 0;

 if (!cf_next_valid_token(&sp->cfp))
  return PARSE_EOF;

 code = sp_check_for_keyword(sp, "in", &var_type_keyword);
 if (code == PARSE_EOF)
  return PARSE_EOF;
 else if (var_type_keyword)
  var->var_type = SHADER_VAR_IN;

 if (!var_type_keyword) {
  code = sp_check_for_keyword(sp, "inout", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = SHADER_VAR_INOUT;
 }

 if (!var_type_keyword) {
  code = sp_check_for_keyword(sp, "out", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = SHADER_VAR_OUT;
 }

 if (!var_type_keyword) {
  code = sp_check_for_keyword(sp, "uniform", &var_type_keyword);
  if (code == PARSE_EOF)
   return PARSE_EOF;
  else if (var_type_keyword)
   var->var_type = SHADER_VAR_UNIFORM;
 }

 code = cf_get_name(&sp->cfp, &var->type, "type", ")");
 if (code != PARSE_SUCCESS)
  return code;

 code = cf_next_name(&sp->cfp, &var->name, "name", ")");
 if (code != PARSE_SUCCESS)
  return code;

 if (!cf_next_valid_token(&sp->cfp))
  return PARSE_EOF;

 if (cf_token_is(&sp->cfp, ":")) {
  code = cf_next_name(&sp->cfp, &var->mapping,
        "mapping specifier", ")");
  if (code != PARSE_SUCCESS)
   return code;

  if (!cf_next_valid_token(&sp->cfp))
   return PARSE_EOF;
 }

 return PARSE_SUCCESS;
}
