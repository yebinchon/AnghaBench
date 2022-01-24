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
struct parser {int /*<<< orphan*/  stack; int /*<<< orphan*/  lexer; int /*<<< orphan*/  chunks; TYPE_1__* tpl; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chunks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct parser*,struct lwan_var_descriptor const*) ; 

__attribute__((used)) static bool FUNC4(struct parser *parser,
                        const struct lwan_var_descriptor *descriptor,
                        const char *string)
{
    if (FUNC3(parser, descriptor) < 0)
        return false;

    FUNC0(&parser->chunks);
    parser->tpl->chunks = parser->chunks;

    FUNC1(&parser->lexer, string);
    FUNC2(&parser->stack);

    return true;
}