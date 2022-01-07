
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {int str; } ;


 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_adderror_expecting (struct cf_parser*,char const*) ;
 int cf_go_to_token (struct cf_parser*,char const*,char const*) ;
 scalar_t__ strref_cmp (int *,char const*) ;

__attribute__((used)) static inline int cf_token_should_be(struct cf_parser *p, const char *str,
         const char *goto1, const char *goto2)
{
 if (strref_cmp(&p->cur_token->str, str) == 0)
  return PARSE_SUCCESS;

 if (goto1) {
  if (!cf_go_to_token(p, goto1, goto2))
   return PARSE_EOF;
 }

 cf_adderror_expecting(p, str);
 return PARSE_CONTINUE;
}
