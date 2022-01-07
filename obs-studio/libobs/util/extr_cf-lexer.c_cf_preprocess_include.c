
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {scalar_t__ type; int str; } ;
struct cf_preprocessor {scalar_t__ ignore_state; } ;


 scalar_t__ CFTOKEN_STRING ;
 int cf_adderror (struct cf_preprocessor*,struct cf_token*,char*,int *,int *,int *) ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 int cf_include_file (struct cf_preprocessor*,struct cf_token*) ;
 int go_to_newline (struct cf_token**) ;
 scalar_t__ is_loc_include (int *) ;
 scalar_t__ is_sys_include (int *) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static void cf_preprocess_include(struct cf_preprocessor *pp,
      struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;

 if (pp->ignore_state) {
  go_to_newline(p_cur_token);
  return;
 }

 next_token(&cur_token, 1);

 if (cur_token->type != CFTOKEN_STRING) {
  cf_adderror_expecting(pp, cur_token, "string");
  go_to_newline(&cur_token);
  goto exit;
 }

 if (is_sys_include(&cur_token->str)) {

 } else if (is_loc_include(&cur_token->str)) {
  if (!pp->ignore_state)
   cf_include_file(pp, cur_token);
 } else {
  cf_adderror(pp, cur_token, "Invalid or incomplete string", ((void*)0),
       ((void*)0), ((void*)0));
  go_to_newline(&cur_token);
  goto exit;
 }

 cur_token++;

exit:
 *p_cur_token = cur_token;
}
