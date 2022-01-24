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
typedef  int WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_VALUE_NAME ; 
 int /*<<< orphan*/  KEY_NAME ; 
 int /*<<< orphan*/  QUOTED_VALUE_NAME ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    WCHAR *line, *p;

    if (!(line = FUNC0(parser->file)))
        return NULL;

    for (p = line; *p; p++)
    {
        switch (*p)
        {
        case '[':
            FUNC1(parser, KEY_NAME);
            return p + 1;
        case '@':
            FUNC1(parser, DEFAULT_VALUE_NAME);
            return p;
        case '"':
            FUNC1(parser, QUOTED_VALUE_NAME);
            return p + 1;
        case ' ':
        case '\t':
            break;
        default:
            return p;
        }
    }

    return p;
}