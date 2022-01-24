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
struct coro {int /*<<< orphan*/  defer; int /*<<< orphan*/  vg_stack_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coro*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct coro*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct coro*) ; 

void FUNC5(struct coro *coro)
{
    FUNC1(coro);
#if !defined(NDEBUG) && defined(HAVE_VALGRIND)
    VALGRIND_STACK_DEREGISTER(coro->vg_stack_id);
#endif
    FUNC3(coro, 0);
    FUNC2(&coro->defer);
    FUNC4(coro);
}