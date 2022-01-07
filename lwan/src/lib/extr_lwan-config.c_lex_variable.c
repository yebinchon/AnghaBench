
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int LEXEME_VARIABLE ;
 int LEXEME_VARIABLE_DEFAULT ;
 int advance_n (struct lexer*,scalar_t__) ;
 int backup (struct lexer*) ;
 int emit (struct lexer*,int ) ;
 scalar_t__ isvariable (int) ;
 void* lex_config ;
 void* lex_error (struct lexer*,char*) ;
 void* lex_variable_default ;
 int next (struct lexer*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void *lex_variable(struct lexer *lexer)
{
    int chr;

    advance_n(lexer, strlen("${") - 1);

    do {
        chr = next(lexer);

        if (chr == ':') {
            backup(lexer);
            emit(lexer, LEXEME_VARIABLE_DEFAULT);
            advance_n(lexer, strlen(":"));
            return lex_variable_default;
        }

        if (chr == '}') {
            backup(lexer);
            emit(lexer, LEXEME_VARIABLE);
            advance_n(lexer, strlen("}"));

            return lex_config;
        }
    } while (isvariable(chr));

    return lex_error(lexer, "EOF while scanning for end of variable");
}
