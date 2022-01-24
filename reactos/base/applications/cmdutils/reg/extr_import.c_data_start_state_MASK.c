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
 int /*<<< orphan*/  DATA_TYPE ; 
 int /*<<< orphan*/  DELETE_VALUE ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (char*) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos;
    unsigned int len;

    while (*p == ' ' || *p == '\t') p++;
    if (*p != '=') goto invalid;
    p++;
    while (*p == ' ' || *p == '\t') p++;

    /* trim trailing whitespace */
    len = FUNC1(p);
    while (len > 0 && (p[len - 1] == ' ' || p[len - 1] == '\t')) len--;
    p[len] = 0;

    if (*p == '-')
        FUNC0(parser, DELETE_VALUE);
    else
        FUNC0(parser, DATA_TYPE);
    return p;

invalid:
    FUNC0(parser, LINE_START);
    return p;
}