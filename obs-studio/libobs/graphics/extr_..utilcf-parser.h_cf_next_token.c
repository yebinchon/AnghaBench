
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CFTOKEN_NEWLINE ;
 scalar_t__ CFTOKEN_NONE ;
 scalar_t__ CFTOKEN_SPACETAB ;

__attribute__((used)) static inline bool cf_next_token(struct cf_parser *p)
{
 if (p->cur_token->type != CFTOKEN_SPACETAB &&
     p->cur_token->type != CFTOKEN_NEWLINE &&
     p->cur_token->type != CFTOKEN_NONE)
  p->cur_token++;

 while (p->cur_token->type == CFTOKEN_SPACETAB ||
        p->cur_token->type == CFTOKEN_NEWLINE)
  p->cur_token++;

 return p->cur_token->type != CFTOKEN_NONE;
}
