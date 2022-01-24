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
struct lwan_tpl {int /*<<< orphan*/  minimum_size; } ;
struct lwan_strbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_strbuf*) ; 
 struct lwan_strbuf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lwan_tpl*,struct lwan_strbuf*,void*) ; 

struct lwan_strbuf *FUNC5(struct lwan_tpl *tpl, void *variables)
{
    struct lwan_strbuf *buf = FUNC3(tpl->minimum_size);

    if (FUNC1(!buf))
        return NULL;

    if (FUNC0(FUNC4(tpl, buf, variables)))
        return buf;

    FUNC2(buf);
    return NULL;
}