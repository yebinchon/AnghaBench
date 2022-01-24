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
struct parser {int* start; } ;
typedef  int CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  COMMENT ; 
 int /*<<< orphan*/  EOL_BACKSLASH ; 
 int /*<<< orphan*/  LEADING_SPACES ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  QUOTES ; 
 int /*<<< orphan*/  TRAILING_SPACES ; 
 int /*<<< orphan*/  VALUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const CHAR*
FUNC6(
    struct parser *parser,
    const CHAR *pos)
{
    const CHAR *p, *token_end = parser->start;

    for (p = pos; !FUNC1(parser, p); p++)
    {
        switch(*p)
        {
        case ';':
            FUNC4(parser, token_end);
            if (!FUNC0(parser, 0)) return NULL;
            FUNC3(parser, LINE_START);
            FUNC5(parser, COMMENT);
            return p + 1;
        case ',':
            FUNC4(parser, token_end);
            if (!FUNC0(parser, 0)) return NULL;
            parser->start = p + 1;
            FUNC3(parser, VALUE_NAME);
            FUNC5(parser, LEADING_SPACES);
            return p + 1;
        case '"':
            FUNC4(parser, token_end);
            parser->start = p + 1;
            FUNC3(parser, VALUE_NAME);
            FUNC5(parser, QUOTES);
            return p + 1;
        case '\\':
            FUNC4(parser, token_end);
            parser->start = p;
            FUNC3(parser, VALUE_NAME);
            FUNC5(parser, EOL_BACKSLASH);
            return p;
        default:
            if (!FUNC2((unsigned char)*p)) token_end = p + 1;
            else
            {
                FUNC4(parser, p);
                FUNC3(parser, VALUE_NAME);
                FUNC5(parser, TRAILING_SPACES);
                return p;
            }
            break;
        }
    }
    FUNC4(parser, token_end);
    if (!FUNC0(parser, 0)) return NULL;
    FUNC5(parser, LINE_START);
    return p;
}