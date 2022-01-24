#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int it_flags; int /*<<< orphan*/  time; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;
struct TYPE_16__ {scalar_t__ use_cas; } ;
struct TYPE_15__ {int total_items; } ;
struct TYPE_14__ {int curr_items; int /*<<< orphan*/  curr_bytes; } ;

/* Variables and functions */
 int ITEM_LINKED ; 
 int ITEM_SLABBED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  current_time ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_4__ settings ; 
 TYPE_3__ stats ; 
 TYPE_2__ stats_state ; 

int FUNC12(item *it, const uint32_t hv) {
    FUNC3(FUNC0(it), it->nkey, it->nbytes);
    FUNC6((it->it_flags & (ITEM_LINKED|ITEM_SLABBED)) == 0);
    it->it_flags |= ITEM_LINKED;
    it->time = current_time;

    FUNC4();
    stats_state.curr_bytes += FUNC1(it);
    stats_state.curr_items += 1;
    stats.total_items += 1;
    FUNC5();

    /* Allocate a new CAS ID on link. */
    FUNC2(it, (settings.use_cas) ? FUNC8() : 0);
    FUNC7(it, hv);
    FUNC9(it);
    FUNC11(it);
    FUNC10(it);

    return 1;
}