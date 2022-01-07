
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int cf_adderror_unexpected_eof (struct cf_parser*) ;
 int cf_next_token (struct cf_parser*) ;

__attribute__((used)) static inline bool cf_next_valid_token(struct cf_parser *p)
{
 if (!cf_next_token(p)) {
  cf_adderror_unexpected_eof(p);
  return 0;
 }

 return 1;
}
