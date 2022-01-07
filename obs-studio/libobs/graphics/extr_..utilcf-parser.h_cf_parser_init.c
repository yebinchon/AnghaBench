
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int * cur_token; int error_list; int pp; int lex; } ;


 int cf_lexer_init (int *) ;
 int cf_preprocessor_init (int *) ;
 int error_data_init (int *) ;

__attribute__((used)) static inline void cf_parser_init(struct cf_parser *parser)
{
 cf_lexer_init(&parser->lex);
 cf_preprocessor_init(&parser->pp);
 error_data_init(&parser->error_list);

 parser->cur_token = ((void*)0);
}
