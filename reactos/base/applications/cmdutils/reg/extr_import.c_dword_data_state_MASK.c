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
struct parser {int data_size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  SET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC4(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    parser->data = FUNC2(sizeof(DWORD));

    if (!FUNC0(line, parser->data))
        goto invalid;

    parser->data_size = sizeof(DWORD);

    FUNC3(parser, SET_VALUE);
    return line;

invalid:
    FUNC1(parser);
    FUNC3(parser, LINE_START);
    return line;
}