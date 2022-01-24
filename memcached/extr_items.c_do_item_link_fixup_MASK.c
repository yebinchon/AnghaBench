#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {size_t slabs_clsid; scalar_t__ prev; scalar_t__ next; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;
struct TYPE_13__ {int total_items; } ;
struct TYPE_12__ {int curr_bytes; int curr_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** heads ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * sizes ; 
 int* sizes_bytes ; 
 TYPE_4__ stats ; 
 TYPE_3__ stats_state ; 
 TYPE_1__** tails ; 

void FUNC7(item *it) {
    item **head, **tail;
    int ntotal = FUNC1(it);
    uint32_t hv = FUNC5(FUNC0(it), it->nkey);
    FUNC4(it, hv);

    head = &heads[it->slabs_clsid];
    tail = &tails[it->slabs_clsid];
    if (it->prev == 0 && *head == 0) *head = it;
    if (it->next == 0 && *tail == 0) *tail = it;
    sizes[it->slabs_clsid]++;
    sizes_bytes[it->slabs_clsid] += ntotal;

    FUNC2();
    stats_state.curr_bytes += ntotal;
    stats_state.curr_items += 1;
    stats.total_items += 1;
    FUNC3();

    FUNC6(it);

    return;
}