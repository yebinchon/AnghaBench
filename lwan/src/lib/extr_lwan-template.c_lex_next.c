
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;
struct lexeme {scalar_t__ type; } ;


 scalar_t__ LEXEME_ERROR ;
 struct lexeme* lex_next_fsm_loop (struct lexer*) ;

__attribute__((used)) static struct lexeme *lex_next(struct lexer *lexer)
{
    struct lexeme *lexeme = lex_next_fsm_loop(lexer);

    if (lexeme && lexeme->type == LEXEME_ERROR)
        return ((void*)0);

    return lexeme;
}
