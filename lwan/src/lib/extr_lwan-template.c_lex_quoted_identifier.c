
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int LEXEME_CLOSE_CURLY_BRACE ;
 int LEXEME_OPEN_CURLY_BRACE ;
 int emit (struct lexer*,int ) ;
 void* lex_error (struct lexer*,char*,int) ;
 int lex_identifier (struct lexer*) ;
 void* lex_inside_action ;
 int next (struct lexer*) ;

__attribute__((used)) static void *lex_quoted_identifier(struct lexer *lexer)
{
    int r;

    emit(lexer, LEXEME_OPEN_CURLY_BRACE);
    lex_identifier(lexer);

    r = next(lexer);
    if (r != '}')
        return lex_error(lexer, "expecting `}', found `%c'", r);

    emit(lexer, LEXEME_CLOSE_CURLY_BRACE);
    return lex_inside_action;
}
