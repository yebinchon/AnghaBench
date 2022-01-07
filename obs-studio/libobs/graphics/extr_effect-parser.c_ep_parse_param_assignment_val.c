
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int type; scalar_t__ is_texture; } ;
struct effect_parser {int cfp; } ;


 int LEX_ERROR ;
 int PARSE_CONTINUE ;
 scalar_t__ astrcmp_n (int ,char*,int) ;
 int cf_adderror (int *,char*,int ,int ,int *,int *) ;
 int ep_parse_param_assign_bool (struct effect_parser*,struct ep_param*) ;
 int ep_parse_param_assign_intfloat (struct effect_parser*,struct ep_param*,int) ;
 int ep_parse_param_assign_intfloat_array (struct effect_parser*,struct ep_param*,int) ;
 int ep_parse_param_assign_string (struct effect_parser*,struct ep_param*) ;
 int ep_parse_param_assign_texture (struct effect_parser*,struct ep_param*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int ep_parse_param_assignment_val(struct effect_parser *ep,
      struct ep_param *param)
{
 if (param->is_texture)
  return ep_parse_param_assign_texture(ep, param);
 else if (strcmp(param->type, "int") == 0)
  return ep_parse_param_assign_intfloat(ep, param, 0);
 else if (strcmp(param->type, "float") == 0)
  return ep_parse_param_assign_intfloat(ep, param, 1);
 else if (astrcmp_n(param->type, "int", 3) == 0)
  return ep_parse_param_assign_intfloat_array(ep, param, 0);
 else if (astrcmp_n(param->type, "float", 5) == 0)
  return ep_parse_param_assign_intfloat_array(ep, param, 1);
 else if (astrcmp_n(param->type, "string", 6) == 0)
  return ep_parse_param_assign_string(ep, param);
 else if (strcmp(param->type, "bool") == 0)
  return ep_parse_param_assign_bool(ep, param);

 cf_adderror(&ep->cfp, "Invalid type '$1' used for assignment",
      LEX_ERROR, param->type, ((void*)0), ((void*)0));

 return PARSE_CONTINUE;
}
