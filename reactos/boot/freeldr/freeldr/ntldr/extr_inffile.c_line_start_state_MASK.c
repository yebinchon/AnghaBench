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
struct parser {int const* start; int /*<<< orphan*/  line_pos; } ;
typedef  int CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  COMMENT ; 
 int /*<<< orphan*/  KEY_NAME ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  SECTION_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const CHAR*
FUNC5(
    struct parser *parser,
    const CHAR *pos)
{
    const CHAR *p;

    for (p = pos; !FUNC1(parser, p); p++)
    {
        switch(*p)
        {
        case '\r':
            continue;

        case '\n':
            parser->line_pos++;
            FUNC0(parser);
            break;

        case ';':
            FUNC3(parser, LINE_START);
            FUNC4(parser, COMMENT);
            return p + 1;

        case '[':
            parser->start = p + 1;
            FUNC4(parser, SECTION_NAME);
            return p + 1;

        default:
            if (!FUNC2((unsigned char)*p))
            {
                parser->start = p;
                FUNC4(parser, KEY_NAME);
                return p;
            }
            break;
        }
    }
    FUNC0(parser);
    return NULL;
}