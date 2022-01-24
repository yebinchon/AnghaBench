#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  spdim; struct TYPE_4__* foreachdim; struct TYPE_4__* dimensions; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* context; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* name; int /*<<< orphan*/  family_pattern; struct TYPE_4__* family_match; int /*<<< orphan*/  critical; int /*<<< orphan*/  warning; int /*<<< orphan*/  calculation; } ;
typedef  TYPE_1__ RRDCALCTEMPLATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

inline void FUNC4(RRDCALCTEMPLATE *rt) {
    if(FUNC3(!rt)) return;

    FUNC0(rt->calculation);
    FUNC0(rt->warning);
    FUNC0(rt->critical);

    FUNC1(rt->family_match);
    FUNC2(rt->family_pattern);

    FUNC1(rt->name);
    FUNC1(rt->exec);
    FUNC1(rt->recipient);
    FUNC1(rt->context);
    FUNC1(rt->source);
    FUNC1(rt->units);
    FUNC1(rt->info);
    FUNC1(rt->dimensions);
    FUNC1(rt->foreachdim);
    FUNC2(rt->spdim);
    FUNC1(rt);
}