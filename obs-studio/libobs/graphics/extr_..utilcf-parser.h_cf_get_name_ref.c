
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int dummy; } ;
struct cf_parser {TYPE_1__* cur_token; } ;
struct TYPE_2__ {int str; } ;


 int CFTOKEN_NAME ;
 int PARSE_SUCCESS ;
 int cf_token_is_type (struct cf_parser*,int ,char const*,char const*) ;
 int strref_copy (struct strref*,int *) ;

__attribute__((used)) static inline int cf_get_name_ref(struct cf_parser *p, struct strref *dst,
      const char *name, const char *goto_token)
{
 int errcode;

 errcode = cf_token_is_type(p, CFTOKEN_NAME, name, goto_token);
 if (errcode != PARSE_SUCCESS)
  return errcode;

 strref_copy(dst, &p->cur_token->str);
 return PARSE_SUCCESS;
}
