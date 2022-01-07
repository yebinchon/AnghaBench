
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int defines; scalar_t__ ignore_state; } ;
struct TYPE_4__ {int da; } ;
struct cf_def {TYPE_2__ tokens; int name; } ;


 scalar_t__ CFTOKEN_NAME ;
 scalar_t__ CFTOKEN_NEWLINE ;
 scalar_t__ CFTOKEN_NONE ;
 int append_end_token (int *) ;
 int append_space (struct cf_preprocessor*,int *,int *) ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 int cf_def_addtoken (struct cf_def*,int ) ;
 int cf_def_free (struct cf_def*) ;
 int cf_def_init (struct cf_def*) ;
 int cf_preprocess_macro_params (struct cf_preprocessor*,struct cf_def*,struct cf_token**) ;
 int cf_token_copy (int *,struct cf_token*) ;
 int da_push_back (int ,struct cf_def*) ;
 int go_to_newline (struct cf_token**) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static void cf_preprocess_define(struct cf_preprocessor *pp,
     struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;
 struct cf_def def;

 if (pp->ignore_state) {
  go_to_newline(p_cur_token);
  return;
 }

 cf_def_init(&def);

 next_token(&cur_token, 1);
 if (cur_token->type != CFTOKEN_NAME) {
  cf_adderror_expecting(pp, cur_token, "identifier");
  go_to_newline(&cur_token);
  goto exit;
 }

 append_space(pp, &def.tokens.da, ((void*)0));
 cf_token_copy(&def.name, cur_token);

 if (!next_token(&cur_token, 1))
  goto complete;


 if (*cur_token->str.array == '(') {
  if (!cf_preprocess_macro_params(pp, &def, &cur_token))
   goto error;
 }

 while (cur_token->type != CFTOKEN_NEWLINE &&
        cur_token->type != CFTOKEN_NONE)
  cf_def_addtoken(&def, cur_token++);

complete:
 append_end_token(&def.tokens.da);
 append_space(pp, &def.tokens.da, ((void*)0));
 da_push_back(pp->defines, &def);
 goto exit;

error:
 cf_def_free(&def);

exit:
 *p_cur_token = cur_token;
}
