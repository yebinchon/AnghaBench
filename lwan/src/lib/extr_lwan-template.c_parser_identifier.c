
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parser {int flags; TYPE_1__* tpl; int lexer; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_4__ {int value; scalar_t__ len; } ;
struct lexeme {scalar_t__ type; TYPE_2__ value; } ;
typedef enum flags { ____Placeholder_flags } flags ;
struct TYPE_3__ {int minimum_size; } ;


 int ACTION_IF_VARIABLE_NOT_EMPTY ;
 int ACTION_VARIABLE ;
 int FLAGS_NEGATE ;
 int FLAGS_NO_FREE ;
 int FLAGS_QUOTE ;
 scalar_t__ LEXEME_CLOSE_CURLY_BRACE ;
 scalar_t__ LEXEME_QUESTION_MARK ;
 scalar_t__ LEXEME_RIGHT_META ;
 int emit_chunk (struct parser*,int ,int,struct lwan_var_descriptor*) ;
 void* error_lexeme (struct lexeme*,char*,...) ;
 struct lexeme* lex_next (int *) ;
 int parser_push_lexeme (struct parser*,struct lexeme*) ;
 void* parser_right_meta ;
 void* parser_text ;
 struct lwan_var_descriptor* symtab_lookup_lexeme (struct parser*,struct lexeme*) ;
 void* unexpected_lexeme (struct lexeme*) ;

__attribute__((used)) static void *parser_identifier(struct parser *parser, struct lexeme *lexeme)
{
    struct lexeme *next;

    if (!(next = lex_next(&parser->lexer)))
        return ((void*)0);

    if (parser->flags & FLAGS_QUOTE) {
        if (next->type != LEXEME_CLOSE_CURLY_BRACE)
            return error_lexeme(lexeme, "Expecting closing brace");
        if (!(next = lex_next(&parser->lexer)))
            return unexpected_lexeme(lexeme);
    }

    if (next->type == LEXEME_RIGHT_META) {
        struct lwan_var_descriptor *symbol =
            symtab_lookup_lexeme(parser, lexeme);
        if (!symbol) {
            return error_lexeme(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        emit_chunk(parser, ACTION_VARIABLE, parser->flags, symbol);

        parser->flags &= ~FLAGS_QUOTE;
        parser->tpl->minimum_size += lexeme->value.len + 1;

        return parser_text;
    }

    if (next->type == LEXEME_QUESTION_MARK) {
        struct lwan_var_descriptor *symbol =
            symtab_lookup_lexeme(parser, lexeme);
        if (!symbol) {
            return error_lexeme(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        enum flags flags = FLAGS_NO_FREE | (parser->flags & FLAGS_NEGATE);
        emit_chunk(parser, ACTION_IF_VARIABLE_NOT_EMPTY, flags, symbol);
        parser_push_lexeme(parser, lexeme);

        parser->flags &= ~FLAGS_NEGATE;

        return parser_right_meta;
    }

    return unexpected_lexeme(next);
}
