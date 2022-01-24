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
struct parser {int /*<<< orphan*/  value_name; int /*<<< orphan*/  hkey; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos + 1;

    while (*p == ' ' || *p == '\t') p++;
    if (*p && *p != ';') goto done;

    FUNC0(parser->hkey, parser->value_name);

done:
    FUNC1(parser, LINE_START);
    return p;
}