
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; } ;


 int LEXEME_STRING ;
 int advance_n (struct lexer*,scalar_t__) ;
 int emit (struct lexer*,int ) ;
 void* lex_config ;
 void* lex_error (struct lexer*,char*) ;
 scalar_t__ lex_streq (struct lexer*,char const*,int) ;
 char next (struct lexer*) ;
 char peek (struct lexer*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void *lex_multiline_string(struct lexer *lexer)
{
    const char *end = (peek(lexer) == '"') ? "\"\"\"" : "'''";

    advance_n(lexer, strlen("'''") - 1);

    do {
        if (lex_streq(lexer, end, 3)) {
            emit(lexer, LEXEME_STRING);
            lexer->pos += 3;

            return lex_config;
        }
    } while (next(lexer) != '\0');

    return lex_error(lexer, "EOF while scanning multiline string");
}
