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
struct RangeList {int /*<<< orphan*/  picker; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct RangeList*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct RangeList *targets)
{
    FUNC0(targets->list);
    FUNC0(targets->picker);
    FUNC1(targets, 0, sizeof(*targets));
}