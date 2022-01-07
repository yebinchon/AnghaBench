
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int type; } ;
struct shader_parser {int cfp; } ;


 int LEX_ERROR ;
 int PARSE_CONTINUE ;
 scalar_t__ astrcmp_n (int ,char*,int) ;
 int cf_adderror (int *,char*,int ,int ,int *,int *) ;
 int sp_parse_param_assign_float_array (struct shader_parser*,struct shader_var*) ;
 int sp_parse_param_assign_intfloat (struct shader_parser*,struct shader_var*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int sp_parse_param_assignment_val(struct shader_parser *sp,
      struct shader_var *param)
{
 if (strcmp(param->type, "int") == 0)
  return sp_parse_param_assign_intfloat(sp, param, 0);
 else if (strcmp(param->type, "float") == 0)
  return sp_parse_param_assign_intfloat(sp, param, 1);
 else if (astrcmp_n(param->type, "float", 5) == 0)
  return sp_parse_param_assign_float_array(sp, param);

 cf_adderror(&sp->cfp, "Invalid type '$1' used for assignment",
      LEX_ERROR, param->type, ((void*)0), ((void*)0));

 return PARSE_CONTINUE;
}
