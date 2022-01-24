#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parser {int flags; TYPE_1__* tpl; int /*<<< orphan*/  lexer; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; scalar_t__ len; } ;
struct lexeme {scalar_t__ type; TYPE_2__ value; } ;
typedef  enum flags { ____Placeholder_flags } flags ;
struct TYPE_3__ {int /*<<< orphan*/  minimum_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_IF_VARIABLE_NOT_EMPTY ; 
 int /*<<< orphan*/  ACTION_VARIABLE ; 
 int FLAGS_NEGATE ; 
 int FLAGS_NO_FREE ; 
 int FLAGS_QUOTE ; 
 scalar_t__ LEXEME_CLOSE_CURLY_BRACE ; 
 scalar_t__ LEXEME_QUESTION_MARK ; 
 scalar_t__ LEXEME_RIGHT_META ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ ,int,struct lwan_var_descriptor*) ; 
 void* FUNC1 (struct lexeme*,char*,...) ; 
 struct lexeme* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,struct lexeme*) ; 
 void* parser_right_meta ; 
 void* parser_text ; 
 struct lwan_var_descriptor* FUNC4 (struct parser*,struct lexeme*) ; 
 void* FUNC5 (struct lexeme*) ; 

__attribute__((used)) static void *FUNC6(struct parser *parser, struct lexeme *lexeme)
{
    struct lexeme *next;

    if (!(next = FUNC2(&parser->lexer)))
        return NULL;

    if (parser->flags & FLAGS_QUOTE) {
        if (next->type != LEXEME_CLOSE_CURLY_BRACE)
            return FUNC1(lexeme, "Expecting closing brace");
        if (!(next = FUNC2(&parser->lexer)))
            return FUNC5(lexeme);
    }

    if (next->type == LEXEME_RIGHT_META) {
        struct lwan_var_descriptor *symbol =
            FUNC4(parser, lexeme);
        if (!symbol) {
            return FUNC1(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        FUNC0(parser, ACTION_VARIABLE, parser->flags, symbol);

        parser->flags &= ~FLAGS_QUOTE;
        parser->tpl->minimum_size += lexeme->value.len + 1;

        return parser_text;
    }

    if (next->type == LEXEME_QUESTION_MARK) {
        struct lwan_var_descriptor *symbol =
            FUNC4(parser, lexeme);
        if (!symbol) {
            return FUNC1(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        enum flags flags = FLAGS_NO_FREE | (parser->flags & FLAGS_NEGATE);
        FUNC0(parser, ACTION_IF_VARIABLE_NOT_EMPTY, flags, symbol);
        FUNC3(parser, lexeme);

        parser->flags &= ~FLAGS_NEGATE;

        return parser_right_meta;
    }

    return FUNC5(next);
}