
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int pp; int cur_token; int error_list; int lex; } ;


 int cf_lexer_lex (int *,char const*,char const*) ;
 int cf_preprocess (int *,int *,int *) ;
 int cf_preprocessor_get_tokens (int *) ;

__attribute__((used)) static inline bool cf_parser_parse(struct cf_parser *parser, const char *str,
       const char *file)
{
 if (!cf_lexer_lex(&parser->lex, str, file))
  return 0;

 if (!cf_preprocess(&parser->pp, &parser->lex, &parser->error_list))
  return 0;

 parser->cur_token = cf_preprocessor_get_tokens(&parser->pp);
 return 1;
}
