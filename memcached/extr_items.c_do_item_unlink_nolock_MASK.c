#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int it_flags; int /*<<< orphan*/  nkey; int /*<<< orphan*/  nbytes; } ;
typedef  TYPE_1__ item ;
struct TYPE_10__ {int curr_items; int /*<<< orphan*/  curr_bytes; } ;

/* Variables and functions */
 int ITEM_LINKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_2__ stats_state ; 

void FUNC9(item *it, const uint32_t hv) {
    FUNC2(FUNC0(it), it->nkey, it->nbytes);
    if ((it->it_flags & ITEM_LINKED) != 0) {
        it->it_flags &= ~ITEM_LINKED;
        FUNC3();
        stats_state.curr_bytes -= FUNC1(it);
        stats_state.curr_items -= 1;
        FUNC4();
        FUNC8(it);
        FUNC5(FUNC0(it), it->nkey, hv);
        FUNC7(it);
        FUNC6(it);
    }
}