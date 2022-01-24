#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct Range6List {int count; int /*<<< orphan*/ * picker; TYPE_1__* list; } ;
struct TYPE_2__ {int /*<<< orphan*/  begin; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

void
FUNC4(struct Range6List *targets)
{
    uint64_t *picker;
    size_t i;
    uint64_t total = 0;

    if (targets->picker)
        FUNC2(targets->picker);

    if (((size_t)targets->count) >= (size_t)(SIZE_MAX/sizeof(*picker)))
        FUNC1(1); /* integer overflow */
    picker = FUNC3(targets->count * sizeof(*picker));
    if (picker == NULL)
        FUNC1(1); /* out of memory */

    for (i=0; i<targets->count; i++) {
        picker[i] = total;
        total += FUNC0(targets->list[i].end, targets->list[i].begin) + 1;
    }
    
    targets->picker = picker;
}