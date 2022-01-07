
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int cf_adderror_unexpected_eof (struct cf_parser*) ;
 int cf_go_to_token (struct cf_parser*,char const*,char const*) ;

__attribute__((used)) static inline bool cf_go_to_valid_token(struct cf_parser *p, const char *str1,
     const char *str2)
{
 if (!cf_go_to_token(p, str1, str2)) {
  cf_adderror_unexpected_eof(p);
  return 0;
 }

 return 1;
}
