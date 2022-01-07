
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int LEXEME_STRING ;
 int advance_n (struct lexer*,int ) ;
 int backup (struct lexer*) ;
 int emit (struct lexer*,int ) ;
 scalar_t__ isstring (int) ;
 void* lex_config ;
 void* lex_variable ;
 int next (struct lexer*) ;
 char peek (struct lexer*) ;
 int strlen (char*) ;

__attribute__((used)) static void *lex_string(struct lexer *lexer)
{
    int chr;

    do {
        chr = next(lexer);

        if (chr == '$' && peek(lexer) == '{') {
            backup(lexer);
            emit(lexer, LEXEME_STRING);

            advance_n(lexer, strlen("{"));

            return lex_variable;
        }
    } while (isstring(chr));

    backup(lexer);
    emit(lexer, LEXEME_STRING);

    return lex_config;
}
