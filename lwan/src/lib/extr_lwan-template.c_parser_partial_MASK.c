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
struct parser {int /*<<< orphan*/  descriptor; } ;
struct lwan_tpl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  value; } ;
struct lexeme {scalar_t__ type; TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_APPLY_TPL ; 
 scalar_t__ LEXEME_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lwan_tpl*) ; 
 void* FUNC1 (struct lexeme*,char*,char*) ; 
 struct lwan_tpl* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* parser_right_meta ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct lexeme*) ; 

__attribute__((used)) static void *FUNC5(struct parser *parser, struct lexeme *lexeme)
{
    struct lwan_tpl *tpl;
    char *filename = FUNC3(lexeme->value.value, lexeme->value.len);

    if (lexeme->type != LEXEME_IDENTIFIER)
        return FUNC4(lexeme);

    tpl = FUNC2(filename, parser->descriptor);
    if (tpl) {
        FUNC0(parser, ACTION_APPLY_TPL, 0, tpl);
        return parser_right_meta;
    }

    return FUNC1(lexeme, "Could not compile template ``%s''", filename);
}