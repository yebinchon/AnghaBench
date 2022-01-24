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
struct mp_log {int dummy; } ;
struct m_property {int name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_log*,char*,...) ; 

void FUNC1(struct mp_log *log,
                                  const struct m_property *list)
{
    int count = 0;

    FUNC0(log, "Name\n\n");
    for (int i = 0; list[i].name; i++) {
        const struct m_property *p = &list[i];
        FUNC0(log, " %s\n", p->name);
        count++;
    }
    FUNC0(log, "\nTotal: %d properties\n", count);
}