
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_4__ {char* array; } ;
struct TYPE_3__ {TYPE_2__ str; } ;


 scalar_t__ cf_next_token (struct cf_parser*) ;
 int cf_pass_pair (struct cf_parser*,char,char) ;
 scalar_t__ strref_cmp (TYPE_2__*,char const*) ;

__attribute__((used)) static inline bool cf_go_to_token(struct cf_parser *p, const char *str1,
      const char *str2)
{
 while (cf_next_token(p)) {
  if (strref_cmp(&p->cur_token->str, str1) == 0) {
   return 1;
  } else if (str2 && strref_cmp(&p->cur_token->str, str2) == 0) {
   return 1;
  } else if (*p->cur_token->str.array == '{') {
   if (!cf_pass_pair(p, '{', '}'))
    break;
  }
 }

 return 0;
}
