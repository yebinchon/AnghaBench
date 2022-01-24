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
struct parser {int /*<<< orphan*/  file; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  HEX_DATA ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  SET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct parser*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC5(struct parser *parser, WCHAR *pos)
{
    WCHAR *line;

    if (!(line = FUNC1(parser->file)))
    {
        FUNC3(parser);
        FUNC4(parser, SET_VALUE);
        return pos;
    }

    while (*line == ' ' || *line == '\t') line++;
    if (!*line || *line == ';') return line;

    if (!FUNC2(*line)) goto invalid;

    FUNC4(parser, HEX_DATA);
    return line;

invalid:
    FUNC0(parser);
    FUNC4(parser, LINE_START);
    return line;
}