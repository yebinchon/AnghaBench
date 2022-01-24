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
struct parser {int /*<<< orphan*/  items; int /*<<< orphan*/  strbuf; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {size_t len; int /*<<< orphan*/  value; } ;
struct lexeme {TYPE_1__ value; } ;
struct config_line {int /*<<< orphan*/  value; int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_LINE_TYPE_SECTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct config_line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct lexeme* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* parse_config ; 

__attribute__((used)) static void *FUNC6(struct parser *parser)
{
    const struct lexeme *lexeme;
    size_t name_len;

    if (!(lexeme = FUNC2(&parser->buffer)))
        return NULL;

    FUNC4(&parser->strbuf, lexeme->value.value,
                           lexeme->value.len);
    name_len = lexeme->value.len;
    FUNC3(&parser->strbuf, '\0');

    while ((lexeme = FUNC2(&parser->buffer))) {
        FUNC4(&parser->strbuf, lexeme->value.value,
                               lexeme->value.len);

        if (!FUNC1(&parser->buffer))
            FUNC3(&parser->strbuf, ' ');
    }

    struct config_line line = {
        .type = CONFIG_LINE_TYPE_SECTION,
        .key = FUNC5(&parser->strbuf),
        .value = FUNC5(&parser->strbuf) + name_len + 1,
    };
    return FUNC0(&parser->items, &line) ? parse_config
                                                             : NULL;
}