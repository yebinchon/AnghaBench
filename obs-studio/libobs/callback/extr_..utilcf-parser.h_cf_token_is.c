
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {int str; } ;


 scalar_t__ strref_cmp (int *,char const*) ;

__attribute__((used)) static inline bool cf_token_is(struct cf_parser *p, const char *val)
{
 return strref_cmp(&p->cur_token->str, val) == 0;
}
