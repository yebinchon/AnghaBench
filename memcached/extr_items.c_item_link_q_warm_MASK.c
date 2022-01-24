#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t slabs_clsid; } ;
typedef  TYPE_1__ item ;
struct TYPE_6__ {int /*<<< orphan*/  moves_to_warm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* itemstats ; 
 int /*<<< orphan*/ * lru_locks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(item *it) {
    FUNC1(&lru_locks[it->slabs_clsid]);
    FUNC0(it);
    itemstats[it->slabs_clsid].moves_to_warm++;
    FUNC2(&lru_locks[it->slabs_clsid]);
}