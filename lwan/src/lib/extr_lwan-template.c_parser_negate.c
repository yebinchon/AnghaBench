
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int flags; } ;
struct lexeme {int type; } ;


 int FLAGS_NEGATE ;


 void* parser_identifier (struct parser*,struct lexeme*) ;
 void* parser_iter ;
 void* unexpected_lexeme (struct lexeme*) ;

__attribute__((used)) static void *parser_negate(struct parser *parser, struct lexeme *lexeme)
{
    switch (lexeme->type) {
    default:
        return unexpected_lexeme(lexeme);

    case 129:
        parser->flags ^= FLAGS_NEGATE;
        return parser_iter;

    case 128:
        parser->flags ^= FLAGS_NEGATE;
        return parser_identifier(parser, lexeme);
    }
}
