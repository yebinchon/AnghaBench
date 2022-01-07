
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct TYPE_4__ {int da; } ;
struct cf_preprocessor {TYPE_2__ tokens; } ;


 scalar_t__ CFTOKEN_NEWLINE ;
 scalar_t__ CFTOKEN_NONE ;
 scalar_t__ CFTOKEN_SPACETAB ;
 int cf_adderror_expected_newline (struct cf_preprocessor*,struct cf_token*) ;
 int cf_preprocess_addtoken (struct cf_preprocessor*,int *,struct cf_token**,int *,int *) ;
 int cf_preprocessor (struct cf_preprocessor*,int,struct cf_token**) ;
 int go_to_newline (struct cf_token**) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static void cf_preprocess_tokens(struct cf_preprocessor *pp, bool if_block,
     struct cf_token **p_cur_token)
{
 bool newline = 1;
 bool preprocessor_line = if_block;
 struct cf_token *cur_token = *p_cur_token;

 while (cur_token->type != CFTOKEN_NONE) {
  if (cur_token->type != CFTOKEN_SPACETAB &&
      cur_token->type != CFTOKEN_NEWLINE) {
   if (preprocessor_line) {
    cf_adderror_expected_newline(pp, cur_token);
    if (!go_to_newline(&cur_token))
     break;
   }

   if (newline && *cur_token->str.array == '#') {
    next_token(&cur_token, 1);
    preprocessor_line = 1;
    if (!cf_preprocessor(pp, if_block, &cur_token))
     break;

    continue;
   }

   newline = 0;
  }

  if (cur_token->type == CFTOKEN_NEWLINE) {
   newline = 1;
   preprocessor_line = 0;
  } else if (cur_token->type == CFTOKEN_NONE) {
   break;
  }

  cf_preprocess_addtoken(pp, &pp->tokens.da, &cur_token, ((void*)0),
           ((void*)0));
 }

 *p_cur_token = cur_token;
}
