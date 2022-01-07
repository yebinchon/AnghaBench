
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {scalar_t__ type; int str; } ;
struct cf_preprocessor {scalar_t__ ignore_state; } ;


 scalar_t__ CFTOKEN_NAME ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 int cf_preprocess_remove_def_strref (struct cf_preprocessor*,int *) ;
 int go_to_newline (struct cf_token**) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static void cf_preprocess_undef(struct cf_preprocessor *pp,
    struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;

 if (pp->ignore_state) {
  go_to_newline(p_cur_token);
  return;
 }

 next_token(&cur_token, 1);
 if (cur_token->type != CFTOKEN_NAME) {
  cf_adderror_expecting(pp, cur_token, "identifier");
  go_to_newline(&cur_token);
  goto exit;
 }

 cf_preprocess_remove_def_strref(pp, &cur_token->str);
 cur_token++;

exit:
 *p_cur_token = cur_token;
}
