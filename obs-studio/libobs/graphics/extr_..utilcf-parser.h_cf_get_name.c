
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cf_parser {TYPE_2__* cur_token; } ;
struct TYPE_3__ {int len; int array; } ;
struct TYPE_4__ {TYPE_1__ str; } ;


 int CFTOKEN_NAME ;
 int PARSE_SUCCESS ;
 char* bstrdup_n (int ,int ) ;
 int cf_token_is_type (struct cf_parser*,int ,char const*,char const*) ;

__attribute__((used)) static inline int cf_get_name(struct cf_parser *p, char **dst, const char *name,
         const char *goto_token)
{
 int errcode;

 errcode = cf_token_is_type(p, CFTOKEN_NAME, name, goto_token);
 if (errcode != PARSE_SUCCESS)
  return errcode;

 *dst = bstrdup_n(p->cur_token->str.array, p->cur_token->str.len);
 return PARSE_SUCCESS;
}
