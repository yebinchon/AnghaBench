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
struct parser {int dummy; } ;
typedef  char WCHAR ;
typedef  scalar_t__ HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 scalar_t__ FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC4(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos;

    FUNC1(parser);

    if (*p == 'H' || *p == 'h')
    {
        HKEY root;
        WCHAR *path;

        root = FUNC2(p, &path);

        if (root && path && *path)
            FUNC0(root, path);
    }

    FUNC3(parser, LINE_START);
    return p;
}