
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int dummy; } ;


 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int cf_copy_token (struct cf_parser*,char**) ;
 int cf_next_valid_token (struct cf_parser*) ;

__attribute__((used)) static inline int cf_next_token_copy(struct cf_parser *p, char **dst)
{
 if (!cf_next_valid_token(p))
  return PARSE_EOF;

 cf_copy_token(p, dst);
 return PARSE_SUCCESS;
}
