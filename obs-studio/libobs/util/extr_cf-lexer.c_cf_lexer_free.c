
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_lexer {int unexpected_eof; int * write_offset; int * reformatted; int * file; int tokens; int base_lexer; } ;


 int bfree (int *) ;
 int da_free (int ) ;
 int lexer_free (int *) ;

void cf_lexer_free(struct cf_lexer *lex)
{
 bfree(lex->file);
 bfree(lex->reformatted);
 lexer_free(&lex->base_lexer);
 da_free(lex->tokens);

 lex->file = ((void*)0);
 lex->reformatted = ((void*)0);
 lex->write_offset = ((void*)0);
 lex->unexpected_eof = 0;
}
