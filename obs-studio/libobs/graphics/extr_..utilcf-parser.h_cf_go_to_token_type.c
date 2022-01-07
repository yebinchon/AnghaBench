
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
typedef enum cf_token_type { ____Placeholder_cf_token_type } cf_token_type ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CFTOKEN_NONE ;

__attribute__((used)) static inline bool cf_go_to_token_type(struct cf_parser *p,
           enum cf_token_type type)
{
 while (p->cur_token->type != CFTOKEN_NONE && p->cur_token->type != type)
  p->cur_token++;

 return p->cur_token->type != CFTOKEN_NONE;
}
