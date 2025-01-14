
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_parser {struct cf_token* cur_token; } ;


 int cf_next_token (struct cf_parser*) ;

__attribute__((used)) static inline bool cf_peek_token(struct cf_parser *p, struct cf_token *peek)
{
 struct cf_token *cur_token = p->cur_token;
 bool success = cf_next_token(p);

 *peek = *p->cur_token;
 p->cur_token = cur_token;

 return success;
}
