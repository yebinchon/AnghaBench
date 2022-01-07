
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
typedef enum cf_token_type { ____Placeholder_cf_token_type } cf_token_type ;
struct TYPE_2__ {int type; } ;


 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_adderror_expecting (struct cf_parser*,char const*) ;
 int cf_go_to_valid_token (struct cf_parser*,char const*,int *) ;

__attribute__((used)) static inline int cf_token_is_type(struct cf_parser *p, enum cf_token_type type,
       const char *type_expected,
       const char *goto_token)
{
 if (p->cur_token->type != type) {
  cf_adderror_expecting(p, type_expected);
  if (goto_token) {
   if (!cf_go_to_valid_token(p, goto_token, ((void*)0)))
    return PARSE_EOF;
  }
  return PARSE_CONTINUE;
 }

 return PARSE_SUCCESS;
}
