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
struct parser {int parse_type; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DWORD_DATA ; 
 int /*<<< orphan*/  HEX_DATA ; 
 int /*<<< orphan*/  LINE_START ; 
#define  REG_BINARY 130 
#define  REG_DWORD 129 
#define  REG_SZ 128 
 int /*<<< orphan*/  STRING_DATA ; 
 int /*<<< orphan*/  UNKNOWN_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    if (!FUNC0(parser, &line))
    {
        FUNC1(parser, LINE_START);
        return line;
    }

    switch (parser->parse_type)
    {
    case REG_SZ:
        FUNC1(parser, STRING_DATA);
        break;
    case REG_DWORD:
        FUNC1(parser, DWORD_DATA);
        break;
    case REG_BINARY: /* all hex data types, including undefined */
        FUNC1(parser, HEX_DATA);
        break;
    default:
        FUNC1(parser, UNKNOWN_DATA);
    }

    return line;
}