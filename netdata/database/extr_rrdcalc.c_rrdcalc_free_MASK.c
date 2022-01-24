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
struct TYPE_4__ {int /*<<< orphan*/  spdim; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* foreachdim; struct TYPE_4__* dimensions; struct TYPE_4__* family; struct TYPE_4__* chart; struct TYPE_4__* name; int /*<<< orphan*/  critical; int /*<<< orphan*/  warning; int /*<<< orphan*/  calculation; } ;
typedef  TYPE_1__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(RRDCALC *rc) {
    if(FUNC3(!rc)) return;

    FUNC0(rc->calculation);
    FUNC0(rc->warning);
    FUNC0(rc->critical);

    FUNC1(rc->name);
    FUNC1(rc->chart);
    FUNC1(rc->family);
    FUNC1(rc->dimensions);
    FUNC1(rc->foreachdim);
    FUNC1(rc->exec);
    FUNC1(rc->recipient);
    FUNC1(rc->source);
    FUNC1(rc->units);
    FUNC1(rc->info);
    FUNC2(rc->spdim);
    FUNC1(rc);
}