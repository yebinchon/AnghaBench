
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;
struct cf_token {int str; int unmerged_str; int lex; int type; } ;
struct cf_preprocessor {int lex; } ;


 int CFTOKEN_SPACETAB ;
 int darray_push_back (int,struct darray*,struct cf_token*) ;
 int space_filler ;
 int strref_copy (int *,int *) ;
 int strref_set (int *,int ,int) ;

__attribute__((used)) static inline void append_space(struct cf_preprocessor *pp,
    struct darray *tokens,
    const struct cf_token *base)
{
 struct cf_token token;

 strref_set(&token.str, space_filler, 1);
 token.type = CFTOKEN_SPACETAB;
 if (base) {
  token.lex = base->lex;
  strref_copy(&token.unmerged_str, &base->unmerged_str);
 } else {
  token.lex = pp->lex;
  strref_copy(&token.unmerged_str, &token.str);
 }

 darray_push_back(sizeof(struct cf_token), tokens, &token);
}
