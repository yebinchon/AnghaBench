
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decl_info {int dummy; } ;
struct cf_token {scalar_t__ type; } ;
struct cf_parser {int dummy; } ;


 scalar_t__ CFTOKEN_NAME ;
 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int cf_next_token_should_be (struct cf_parser*,char*,int *,int *) ;
 int cf_next_valid_token (struct cf_parser*) ;
 int cf_peek_valid_token (struct cf_parser*,struct cf_token*) ;
 scalar_t__ cf_token_is (struct cf_parser*,char*) ;
 int cf_token_should_be (struct cf_parser*,char*,char*,int *) ;
 int parse_param (struct cf_parser*,struct decl_info*) ;

__attribute__((used)) static void parse_params(struct cf_parser *cfp, struct decl_info *decl)
{
 struct cf_token peek;
 int code;

 if (!cf_peek_valid_token(cfp, &peek))
  return;

 while (peek.type == CFTOKEN_NAME) {
  code = parse_param(cfp, decl);
  if (code == PARSE_EOF)
   return;

  if (code != PARSE_CONTINUE && !cf_next_valid_token(cfp))
   return;

  if (cf_token_is(cfp, ")"))
   break;
  else if (cf_token_should_be(cfp, ",", ",", ((void*)0)) == PARSE_EOF)
   return;

  if (!cf_peek_valid_token(cfp, &peek))
   return;
 }

 if (!cf_token_is(cfp, ")"))
  cf_next_token_should_be(cfp, ")", ((void*)0), ((void*)0));
}
