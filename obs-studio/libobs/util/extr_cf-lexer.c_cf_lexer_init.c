
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_lexer {int unexpected_eof; int * write_offset; int * reformatted; int * file; int tokens; int base_lexer; } ;


 int da_init (int ) ;
 int lexer_init (int *) ;

void cf_lexer_init(struct cf_lexer *lex)
{
 lexer_init(&lex->base_lexer);
 da_init(lex->tokens);

 lex->file = ((void*)0);
 lex->reformatted = ((void*)0);
 lex->write_offset = ((void*)0);
 lex->unexpected_eof = 0;
}
