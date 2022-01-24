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
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_ITEM ;
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_CB ;

/* Variables and functions */
 int /*<<< orphan*/  cleanup_stack ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;

    if (!FUNC0(1))
        return;
    item = FUNC1(cb);
    if (item)
        FUNC2(cleanup_stack, item, 0);
}