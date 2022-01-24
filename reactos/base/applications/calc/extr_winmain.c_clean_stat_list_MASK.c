#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  num; scalar_t__ next; } ;
typedef  TYPE_1__ statistic_t ;
struct TYPE_5__ {TYPE_1__* stat; } ;

/* Variables and functions */
 TYPE_3__ calc ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
    statistic_t *p = calc.stat;

    while (p != NULL) {
        statistic_t *s = p;
        p = (statistic_t *)(p->next);
        FUNC1(&s->num);
        FUNC0(s);
    }
    calc.stat = p;
}