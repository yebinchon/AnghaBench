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
struct parser {char const* start; } ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  EOL_BACKSLASH ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const CHAR*
FUNC4(
    struct parser *parser,
    const CHAR *pos )
{
    const CHAR *p;

    for (p = pos; !FUNC0(parser, p); p++)
    {
        if (*p == '\\')
        {
            parser->start = p;
            FUNC3(parser, EOL_BACKSLASH);
            return p;
        }
        if (!FUNC1((unsigned char)*p))
            break;
    }
    parser->start = p;
    FUNC2(parser);
    return p;
}