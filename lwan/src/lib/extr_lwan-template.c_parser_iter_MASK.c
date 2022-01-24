#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parser {int flags; } ;
struct lwan_var_descriptor {int /*<<< orphan*/  list_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; scalar_t__ len; } ;
struct lexeme {scalar_t__ type; TYPE_1__ value; } ;
typedef  enum flags { ____Placeholder_flags } flags ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_START_ITER ; 
 int ENODEV ; 
 int FLAGS_NEGATE ; 
 int FLAGS_NO_FREE ; 
 scalar_t__ LEXEME_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ ,int,struct lwan_var_descriptor*) ; 
 void* FUNC1 (struct lexeme*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,struct lexeme*) ; 
 void* parser_right_meta ; 
 struct lwan_var_descriptor* FUNC3 (struct parser*,struct lexeme*) ; 
 int FUNC4 (struct parser*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct lexeme*) ; 

__attribute__((used)) static void *FUNC6(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_IDENTIFIER) {
        enum flags negate = parser->flags & FLAGS_NEGATE;
        struct lwan_var_descriptor *symbol =
            FUNC3(parser, lexeme);
        if (!symbol) {
            return FUNC1(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        int r = FUNC4(parser, symbol->list_desc);
        if (r < 0) {
            if (r == -ENODEV) {
                return FUNC1(
                    lexeme, "Couldn't find descriptor for variable `%.*s'",
                    (int)lexeme->value.len, lexeme->value.value);
            }
            return FUNC1(lexeme,
                                "Could not push symbol table (out of memory)");
        }

        FUNC0(parser, ACTION_START_ITER, negate | FLAGS_NO_FREE, symbol);

        FUNC2(parser, lexeme);
        parser->flags &= ~FLAGS_NEGATE;
        return parser_right_meta;
    }

    return FUNC5(lexeme);
}