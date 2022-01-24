#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct parser {scalar_t__ backslash; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  EOL_BACKSLASH ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  SET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC4(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    if (!*line)
        goto set_value;

    if (!FUNC0(parser, &line))
        goto invalid;

    if (parser->backslash)
    {
        FUNC3(parser, EOL_BACKSLASH);
        return line;
    }

    FUNC2(parser);

set_value:
    FUNC3(parser, SET_VALUE);
    return line;

invalid:
    FUNC1(parser);
    FUNC3(parser, LINE_START);
    return line;
}