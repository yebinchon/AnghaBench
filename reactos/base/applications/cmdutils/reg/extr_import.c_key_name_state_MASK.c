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

/* Variables and functions */
 int /*<<< orphan*/  DELETE_KEY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  STRING_OPEN_KEY_FAILED ; 
 scalar_t__ FUNC0 (struct parser*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static WCHAR *FUNC4(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos, *key_end;

    if (*p == ' ' || *p == '\t' || !(key_end = FUNC3(p, ']')))
        goto done;

    *key_end = 0;

    if (*p == '-')
    {
        FUNC2(parser, DELETE_KEY);
        return p + 1;
    }
    else if (FUNC0(parser, p) != ERROR_SUCCESS)
        FUNC1(STRING_OPEN_KEY_FAILED, p);

done:
    FUNC2(parser, LINE_START);
    return p;
}