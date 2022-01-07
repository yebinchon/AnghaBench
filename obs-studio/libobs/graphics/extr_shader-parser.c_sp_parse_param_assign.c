
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int dummy; } ;
struct shader_parser {int cfp; } ;


 scalar_t__ PARSE_SUCCESS ;
 int cf_next_valid_token (int *) ;
 scalar_t__ sp_parse_param_assignment_val (struct shader_parser*,struct shader_var*) ;

__attribute__((used)) static inline bool sp_parse_param_assign(struct shader_parser *sp,
      struct shader_var *param)
{
 if (sp_parse_param_assignment_val(sp, param) != PARSE_SUCCESS)
  return 0;

 if (!cf_next_valid_token(&sp->cfp))
  return 0;

 return 1;
}
