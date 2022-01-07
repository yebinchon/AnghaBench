
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int dummy; } ;
struct decl_param {scalar_t__ flags; int name; int type; int member_0; } ;
struct decl_info {int params; } ;
struct cf_parser {int dummy; } ;


 scalar_t__ CALL_PARAM_IN ;
 int PARSE_CONTINUE ;
 int PARSE_SUCCESS ;
 int TYPE_OR_STORAGE ;
 int cf_adderror_expecting (struct cf_parser*,char*) ;
 int cf_go_to_token (struct cf_parser*,char*,char*) ;
 int cf_next_name (struct cf_parser*,int *,char*,char*) ;
 int cf_next_name_ref (struct cf_parser*,struct strref*,int ,char*) ;
 int da_push_back (int ,struct decl_param*) ;
 int err_existing_name (struct cf_parser*,int ) ;
 int err_reserved_name (struct cf_parser*,int ) ;
 int get_type (struct strref*,int *,int) ;
 scalar_t__ is_in_out_specifier (struct cf_parser*,struct strref*,scalar_t__*) ;
 scalar_t__ is_reserved_name (int ) ;
 scalar_t__ name_exists (struct decl_info*,int ) ;

__attribute__((used)) static int parse_param(struct cf_parser *cfp, struct decl_info *decl)
{
 struct strref ref;
 int code;
 struct decl_param param = {0};


 code = cf_next_name_ref(cfp, &ref, TYPE_OR_STORAGE, ",");
 if (code != PARSE_SUCCESS)
  return code;

 while (is_in_out_specifier(cfp, &ref, &param.flags)) {
  code = cf_next_name_ref(cfp, &ref, TYPE_OR_STORAGE, ",");
  if (code != PARSE_SUCCESS)
   return code;
 }


 if (param.flags == 0)
  param.flags = CALL_PARAM_IN;

 if (!get_type(&ref, &param.type, 0)) {
  cf_adderror_expecting(cfp, "type");
  cf_go_to_token(cfp, ",", ")");
  return PARSE_CONTINUE;
 }


 code = cf_next_name(cfp, &param.name, "parameter name", ",");
 if (code != PARSE_SUCCESS)
  return code;

 if (name_exists(decl, param.name))
  err_existing_name(cfp, param.name);

 if (is_reserved_name(param.name))
  err_reserved_name(cfp, param.name);

 da_push_back(decl->params, &param);
 return PARSE_SUCCESS;
}
