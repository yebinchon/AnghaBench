
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {scalar_t__ type; } ;


 scalar_t__ CFTOKEN_NEWLINE ;
 scalar_t__ CFTOKEN_NONE ;
 scalar_t__ CFTOKEN_SPACETAB ;

__attribute__((used)) static inline bool next_token(struct cf_token **p_cur_token, bool preprocessor)
{
 struct cf_token *cur_token = *p_cur_token;

 if (cur_token->type != CFTOKEN_NONE)
  cur_token++;


 while (cur_token->type == CFTOKEN_SPACETAB &&
        (preprocessor || cur_token->type == CFTOKEN_NEWLINE))
  cur_token++;

 *p_cur_token = cur_token;
 return cur_token->type != CFTOKEN_NONE;
}
