
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int LEXEME_IDENTIFIER ;
 int backup (struct lexer*) ;
 int emit (struct lexer*,int ) ;
 scalar_t__ isident (int ) ;
 void* lex_inside_action ;
 int next (struct lexer*) ;

__attribute__((used)) static void *lex_identifier(struct lexer *lexer)
{
    while (isident(next(lexer)))
        ;
    backup(lexer);
    emit(lexer, LEXEME_IDENTIFIER);
    return lex_inside_action;
}
