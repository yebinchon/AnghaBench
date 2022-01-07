
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct shader_var {int default_val; } ;
struct TYPE_9__ {TYPE_2__* cur_token; } ;
struct shader_parser {TYPE_3__ cfp; } ;
struct TYPE_7__ {int array; } ;
struct TYPE_8__ {TYPE_1__ str; } ;


 int CFTOKEN_NUM ;
 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_next_token (TYPE_3__*) ;
 int cf_next_valid_token (TYPE_3__*) ;
 scalar_t__ cf_token_is (TYPE_3__*,char*) ;
 int cf_token_is_type (TYPE_3__*,int ,char*,char*) ;
 int da_push_back_array (int ,...) ;
 scalar_t__ os_strtod (int ) ;
 long strtol (int ,int *,int) ;

__attribute__((used)) static inline int sp_parse_param_assign_intfloat(struct shader_parser *sp,
       struct shader_var *param,
       bool is_float)
{
 int code;
 bool is_negative = 0;

 if (!cf_next_valid_token(&sp->cfp))
  return PARSE_EOF;

 if (cf_token_is(&sp->cfp, "-")) {
  is_negative = 1;

  if (!cf_next_token(&sp->cfp))
   return PARSE_EOF;
 }

 code = cf_token_is_type(&sp->cfp, CFTOKEN_NUM, "numeric value", ";");
 if (code != PARSE_SUCCESS)
  return code;

 if (is_float) {
  float f = (float)os_strtod(sp->cfp.cur_token->str.array);
  if (is_negative)
   f = -f;
  da_push_back_array(param->default_val, &f, sizeof(float));
 } else {
  long l = strtol(sp->cfp.cur_token->str.array, ((void*)0), 10);
  if (is_negative)
   l = -l;
  da_push_back_array(param->default_val, &l, sizeof(long));
 }

 return PARSE_SUCCESS;
}
