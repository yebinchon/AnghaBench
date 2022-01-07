
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {char* type; } ;
struct shader_parser {int cfp; } ;


 int LEX_ERROR ;
 int PARSE_SUCCESS ;
 int cf_adderror (int *,char*,int ,int *,int *,int *) ;
 int cf_next_token_should_be (int *,char*,char*,int *) ;
 int sp_parse_param_assign_intfloat (struct shader_parser*,struct shader_var*,int) ;

__attribute__((used)) static inline int sp_parse_param_assign_float_array(struct shader_parser *sp,
          struct shader_var *param)
{
 const char *float_type = param->type + 5;
 int float_count = 0, code, i;



 if (float_type[0] < '1' || float_type[0] > '4')
  cf_adderror(&sp->cfp, "Invalid row count", LEX_ERROR, ((void*)0),
       ((void*)0), ((void*)0));

 float_count = float_type[0] - '0';

 if (float_type[1] == 'x') {
  if (float_type[2] < '1' || float_type[2] > '4')
   cf_adderror(&sp->cfp, "Invalid column count", LEX_ERROR,
        ((void*)0), ((void*)0), ((void*)0));

  float_count *= float_type[2] - '0';
 }



 code = cf_next_token_should_be(&sp->cfp, "{", ";", ((void*)0));
 if (code != PARSE_SUCCESS)
  return code;

 for (i = 0; i < float_count; i++) {
  char *next = ((i + 1) < float_count) ? "," : "}";

  code = sp_parse_param_assign_intfloat(sp, param, 1);
  if (code != PARSE_SUCCESS)
   return code;

  code = cf_next_token_should_be(&sp->cfp, next, ";", ((void*)0));
  if (code != PARSE_SUCCESS)
   return code;
 }

 return PARSE_SUCCESS;
}
