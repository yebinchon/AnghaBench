
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int dummy; } ;
struct shader_parser {int params; int cfp; } ;


 scalar_t__ cf_token_is (int *,char*) ;
 int da_push_back (int ,struct shader_var*) ;
 int shader_var_free (struct shader_var*) ;
 int shader_var_init_param (struct shader_var*,char*,char*,int,int) ;
 int sp_parse_param_array (struct shader_parser*,struct shader_var*) ;
 int sp_parse_param_assign (struct shader_parser*,struct shader_var*) ;

__attribute__((used)) static void sp_parse_param(struct shader_parser *sp, char *type, char *name,
      bool is_const, bool is_uniform)
{
 struct shader_var param;
 shader_var_init_param(&param, type, name, is_uniform, is_const);

 if (cf_token_is(&sp->cfp, ";"))
  goto complete;
 if (cf_token_is(&sp->cfp, "[") && !sp_parse_param_array(sp, &param))
  goto error;
 if (cf_token_is(&sp->cfp, "=") && !sp_parse_param_assign(sp, &param))
  goto error;
 if (!cf_token_is(&sp->cfp, ";"))
  goto error;

complete:
 da_push_back(sp->params, &param);
 return;

error:
 shader_var_free(&param);
}
