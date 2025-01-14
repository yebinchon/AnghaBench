
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int lexer; } ;
struct lexeme {scalar_t__ type; } ;


 scalar_t__ LEXEME_IDENTIFIER ;
 scalar_t__ LEXEME_QUESTION_MARK ;
 scalar_t__ LEXEME_RIGHT_META ;
 struct lexeme* lex_next (int *) ;
 void* parser_end_iter (struct parser*,struct lexeme*) ;
 void* parser_end_var_not_empty (struct parser*,struct lexeme*) ;
 void* unexpected_lexeme (struct lexeme*) ;

__attribute__((used)) static void *parser_slash(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_IDENTIFIER) {
        struct lexeme *next;

        if ((next = lex_next(&parser->lexer))) {
            if (next->type == LEXEME_RIGHT_META)
                return parser_end_iter(parser, lexeme);

            if (next->type == LEXEME_QUESTION_MARK)
                return parser_end_var_not_empty(parser, lexeme);

            return unexpected_lexeme(next);
        }
    }

    return unexpected_lexeme(lexeme);
}
