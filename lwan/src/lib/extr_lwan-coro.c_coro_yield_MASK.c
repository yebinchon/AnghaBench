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
struct coro {int yield_value; TYPE_1__* switcher; } ;
struct TYPE_2__ {int /*<<< orphan*/  caller; int /*<<< orphan*/  callee; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coro*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

inline int FUNC2(struct coro *coro, int value)
{
    FUNC0(coro);
    coro->yield_value = value;
    FUNC1(&coro->switcher->callee, &coro->switcher->caller);
    return coro->yield_value;
}