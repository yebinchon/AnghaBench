#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
struct TYPE_7__ {int /*<<< orphan*/  checked; int /*<<< orphan*/  unfetched; int /*<<< orphan*/  reclaimed; scalar_t__ it_flags; } ;
struct TYPE_6__ {TYPE_1__* mod; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* doneclass ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 TYPE_2__ active_crawler_mod ; 
 int /*<<< orphan*/  crawler_count ; 
 TYPE_3__* crawlers ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lru_locks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC4(int i) {
    crawlers[i].it_flags = 0;
    crawler_count--;
    FUNC1((item *)&crawlers[i]);
    FUNC0(i, crawlers[i].reclaimed,
            crawlers[i].unfetched, crawlers[i].checked);
    FUNC2(&lru_locks[i]);
    if (active_crawler_mod.mod->doneclass != NULL)
        active_crawler_mod.mod->doneclass(&active_crawler_mod, i);
}