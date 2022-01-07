
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;
struct cf_token {int dummy; } ;


 int cf_token_clear (struct cf_token*) ;
 int darray_push_back (int,struct darray*,struct cf_token*) ;

__attribute__((used)) static inline void append_end_token(struct darray *tokens)
{
 struct cf_token end;
 cf_token_clear(&end);
 darray_push_back(sizeof(struct cf_token), tokens, &end);
}
