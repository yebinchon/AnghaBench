
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int * cur_token; int error_list; int pp; int lex; } ;


 int cf_lexer_free (int *) ;
 int cf_preprocessor_free (int *) ;
 int error_data_free (int *) ;

__attribute__((used)) static inline void cf_parser_free(struct cf_parser *parser)
{
 cf_lexer_free(&parser->lex);
 cf_preprocessor_free(&parser->pp);
 error_data_free(&parser->error_list);

 parser->cur_token = ((void*)0);
}
