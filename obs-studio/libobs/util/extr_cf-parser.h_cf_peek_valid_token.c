
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_parser {int dummy; } ;


 int cf_adderror_unexpected_eof (struct cf_parser*) ;
 int cf_peek_token (struct cf_parser*,struct cf_token*) ;

__attribute__((used)) static inline bool cf_peek_valid_token(struct cf_parser *p,
           struct cf_token *peek)
{
 bool success = cf_peek_token(p, peek);
 if (!success)
  cf_adderror_unexpected_eof(p);
 return success;
}
