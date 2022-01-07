
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;
struct cf_token {scalar_t__ type; int str; } ;
struct cf_preprocessor {int dummy; } ;


 scalar_t__ CFTOKEN_NEWLINE ;
 scalar_t__ CFTOKEN_NONE ;
 int cf_adderror (struct cf_preprocessor*,struct cf_token*,char*,int ,int *,int *) ;
 int cf_preprocess_define (struct cf_preprocessor*,struct cf_token**) ;
 int cf_preprocess_ifdef (struct cf_preprocessor*,int,struct cf_token**) ;
 int cf_preprocess_include (struct cf_preprocessor*,struct cf_token**) ;
 int cf_preprocess_undef (struct cf_preprocessor*,struct cf_token**) ;
 int dstr_free (struct dstr*) ;
 int dstr_init_copy_strref (struct dstr*,int *) ;
 scalar_t__ strref_cmp (int *,char*) ;

__attribute__((used)) static bool cf_preprocessor(struct cf_preprocessor *pp, bool if_block,
       struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;

 if (strref_cmp(&cur_token->str, "include") == 0) {
  cf_preprocess_include(pp, p_cur_token);

 } else if (strref_cmp(&cur_token->str, "define") == 0) {
  cf_preprocess_define(pp, p_cur_token);

 } else if (strref_cmp(&cur_token->str, "undef") == 0) {
  cf_preprocess_undef(pp, p_cur_token);

 } else if (strref_cmp(&cur_token->str, "ifdef") == 0) {
  cf_preprocess_ifdef(pp, 0, p_cur_token);

 } else if (strref_cmp(&cur_token->str, "ifndef") == 0) {
  cf_preprocess_ifdef(pp, 1, p_cur_token);



 } else if (strref_cmp(&cur_token->str, "else") == 0 ||

     strref_cmp(&cur_token->str, "endif") == 0) {
  if (!if_block) {
   struct dstr name;
   dstr_init_copy_strref(&name, &cur_token->str);
   cf_adderror(pp, cur_token,
        "#$1 outside of "
        "#if/#ifdef/#ifndef block",
        name.array, ((void*)0), ((void*)0));
   dstr_free(&name);
   (*p_cur_token)++;

   return 1;
  }

  return 0;

 } else if (cur_token->type != CFTOKEN_NEWLINE &&
     cur_token->type != CFTOKEN_NONE) {




  (*p_cur_token)++;
 }

 return 1;
}
