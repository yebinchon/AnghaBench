
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {scalar_t__ type; } ;
struct cf_preprocessor {int ignore_state; } ;


 scalar_t__ CFTOKEN_NONE ;
 int cf_adderror_unexpected_endif_eof (struct cf_preprocessor*,struct cf_token*) ;
 int cf_preprocess_tokens (struct cf_preprocessor*,int,struct cf_token**) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static inline bool cf_preprocess_subblock(struct cf_preprocessor *pp,
       bool ignore,
       struct cf_token **p_cur_token)
{
 bool eof;

 if (!next_token(p_cur_token, 1))
  return 0;

 if (!pp->ignore_state) {
  pp->ignore_state = ignore;
  cf_preprocess_tokens(pp, 1, p_cur_token);
  pp->ignore_state = 0;
 } else {
  cf_preprocess_tokens(pp, 1, p_cur_token);
 }

 eof = ((*p_cur_token)->type == CFTOKEN_NONE);
 if (eof)
  cf_adderror_unexpected_endif_eof(pp, *p_cur_token);
 return !eof;
}
