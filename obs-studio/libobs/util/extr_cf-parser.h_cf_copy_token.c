
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cf_parser {TYPE_2__* cur_token; } ;
struct TYPE_3__ {int len; int array; } ;
struct TYPE_4__ {TYPE_1__ str; } ;


 char* bstrdup_n (int ,int ) ;

__attribute__((used)) static inline void cf_copy_token(struct cf_parser *p, char **dst)
{
 *dst = bstrdup_n(p->cur_token->str.array, p->cur_token->str.len);
}
