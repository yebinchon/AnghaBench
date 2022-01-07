
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cur_token; } ;
struct shader_parser {int funcs; TYPE_1__ cfp; } ;
struct shader_func {char* mapping; int end; int start; } ;


 int PARSE_SUCCESS ;
 int cf_adderror_expecting (TYPE_1__*,char*) ;
 int cf_next_name (TYPE_1__*,char**,char*,char*) ;
 int cf_next_token (TYPE_1__*) ;
 int cf_next_valid_token (TYPE_1__*) ;
 int cf_pass_pair (TYPE_1__*,char,char) ;
 scalar_t__ cf_token_is (TYPE_1__*,char*) ;
 int da_push_back (int ,struct shader_func*) ;
 int shader_func_free (struct shader_func*) ;
 int shader_func_init (struct shader_func*,char*,char*) ;
 int sp_parse_func_params (struct shader_parser*,struct shader_func*) ;

__attribute__((used)) static void sp_parse_function(struct shader_parser *sp, char *type, char *name)
{
 struct shader_func func;

 shader_func_init(&func, type, name);
 if (!sp_parse_func_params(sp, &func))
  goto error;

 if (!cf_next_valid_token(&sp->cfp))
  goto error;


 if (cf_token_is(&sp->cfp, ":")) {
  char *mapping = ((void*)0);
  int errorcode =
   cf_next_name(&sp->cfp, &mapping, "mapping", "{");
  if (errorcode != PARSE_SUCCESS)
   goto error;

  func.mapping = mapping;

  if (!cf_next_valid_token(&sp->cfp))
   goto error;
 }

 if (!cf_token_is(&sp->cfp, "{")) {
  cf_adderror_expecting(&sp->cfp, "{");
  goto error;
 }

 func.start = sp->cfp.cur_token;
 if (!cf_pass_pair(&sp->cfp, '{', '}'))
  goto error;


 cf_next_token(&sp->cfp);

 func.end = sp->cfp.cur_token;
 da_push_back(sp->funcs, &func);
 return;

error:
 shader_func_free(&func);
}
