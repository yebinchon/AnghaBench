
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int LEXEME_STRING ;
 int advance_n (struct lexer*,int ) ;
 int backup (struct lexer*) ;
 int emit (struct lexer*,int ) ;
 void* lex_config ;
 void* lex_error (struct lexer*,char*) ;
 int next (struct lexer*) ;
 int strlen (char*) ;

__attribute__((used)) static void *lex_variable_default(struct lexer *lexer)
{
    int chr;

    do {
        chr = next(lexer);

        if (chr == '}') {
            backup(lexer);
            emit(lexer, LEXEME_STRING);

            advance_n(lexer, strlen("}"));

            return lex_config;
        }
    } while (chr != '\0');

    return lex_error(lexer, "EOF while scanning for end of variable");
}
