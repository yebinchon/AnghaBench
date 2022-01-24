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
 int /*<<< orphan*/  HEX_MULTILINE ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC0 (struct parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos;

    while (*p == ' ' || *p == '\t') p++;
    if (*p && *p != ';') goto invalid;

    FUNC1(parser, HEX_MULTILINE);
    return pos;

invalid:
    FUNC0(parser);
    FUNC1(parser, LINE_START);
    return p;
}