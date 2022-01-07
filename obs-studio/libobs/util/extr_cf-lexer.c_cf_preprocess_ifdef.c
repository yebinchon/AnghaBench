
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {scalar_t__ type; int str; } ;
struct cf_preprocessor {int dummy; } ;
struct cf_def {int dummy; } ;


 scalar_t__ CFTOKEN_NAME ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 struct cf_def* cf_preprocess_get_def (struct cf_preprocessor*,int *) ;
 int cf_preprocess_subblock (struct cf_preprocessor*,int,struct cf_token**) ;
 int go_to_newline (struct cf_token**) ;
 int next_token (struct cf_token**,int) ;
 scalar_t__ strref_cmp (int *,char*) ;

__attribute__((used)) static void cf_preprocess_ifdef(struct cf_preprocessor *pp, bool ifnot,
    struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;
 struct cf_def *def;
 bool is_true;

 next_token(&cur_token, 1);
 if (cur_token->type != CFTOKEN_NAME) {
  cf_adderror_expecting(pp, cur_token, "identifier");
  go_to_newline(&cur_token);
  goto exit;
 }

 def = cf_preprocess_get_def(pp, &cur_token->str);
 is_true = (def == ((void*)0)) == ifnot;

 if (!cf_preprocess_subblock(pp, !is_true, &cur_token))
  goto exit;

 if (strref_cmp(&cur_token->str, "else") == 0) {
  if (!cf_preprocess_subblock(pp, is_true, &cur_token))
   goto exit;

 }

 cur_token++;

exit:
 *p_cur_token = cur_token;
}
