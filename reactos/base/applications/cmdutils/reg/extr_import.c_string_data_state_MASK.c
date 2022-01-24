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
struct parser {char* data; int data_size; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  SET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct parser*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 

__attribute__((used)) static WCHAR *FUNC4(struct parser *parser, WCHAR *pos)
{
    WCHAR *line;

    parser->data = pos;

    if (!FUNC3(parser->data, &line))
        goto invalid;

    while (*line == ' ' || *line == '\t') line++;
    if (*line && *line != ';') goto invalid;

    parser->data_size = (FUNC1(parser->data) + 1) * sizeof(WCHAR);

    FUNC2(parser, SET_VALUE);
    return line;

invalid:
    FUNC0(parser);
    FUNC2(parser, LINE_START);
    return line;
}