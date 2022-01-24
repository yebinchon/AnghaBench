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
struct lwan_strbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_strbuf*,char*,int) ; 

void FUNC3(struct lwan_strbuf *buf, void *ptr)
{
    if (FUNC0(!ptr))
        return;

    const char *str = *(char **)ptr;
    if (FUNC0(!str))
        return;

    for (const char *p = str; *p; p++) {
        if (*p == '<')
            FUNC2(buf, "&lt;", 4);
        else if (*p == '>')
            FUNC2(buf, "&gt;", 4);
        else if (*p == '&')
            FUNC2(buf, "&amp;", 5);
        else if (*p == '"')
            FUNC2(buf, "&quot;", 6);
        else if (*p == '\'')
            FUNC2(buf, "&#x27;", 6);
        else if (*p == '/')
            FUNC2(buf, "&#x2f;", 6);
        else
            FUNC1(buf, *p);
    }
}