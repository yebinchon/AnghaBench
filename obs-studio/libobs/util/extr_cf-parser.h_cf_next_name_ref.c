
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int dummy; } ;
struct cf_parser {int dummy; } ;


 int PARSE_EOF ;
 int cf_get_name_ref (struct cf_parser*,struct strref*,char const*,char const*) ;
 int cf_next_valid_token (struct cf_parser*) ;

__attribute__((used)) static inline int cf_next_name_ref(struct cf_parser *p, struct strref *dst,
       const char *name, const char *goto_token)
{
 if (!cf_next_valid_token(p))
  return PARSE_EOF;

 return cf_get_name_ref(p, dst, name, goto_token);
}
