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
struct parser {int /*<<< orphan*/ * value_name; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_START ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static WCHAR *FUNC6(struct parser *parser, WCHAR *pos)
{
    WCHAR *val_name = pos, *p;

    if (parser->value_name)
    {
        FUNC0(parser->value_name);
        parser->value_name = NULL;
    }

    if (!FUNC5(val_name, &p))
        goto invalid;

    /* copy the value name in case we need to parse multiple lines and the buffer is overwritten */
    parser->value_name = FUNC1((FUNC3(val_name) + 1) * sizeof(WCHAR));
    FUNC2(parser->value_name, val_name);

    FUNC4(parser, DATA_START);
    return p;

invalid:
    FUNC4(parser, LINE_START);
    return val_name;
}