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
typedef  int /*<<< orphan*/  itemstats_t ;

/* Variables and functions */
 int LARGEST_ID ; 
 int /*<<< orphan*/ * itemstats ; 
 int /*<<< orphan*/ * lru_locks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void) {
    int i;
    for (i = 0; i < LARGEST_ID; i++) {
        FUNC1(&lru_locks[i]);
        FUNC0(&itemstats[i], 0, sizeof(itemstats_t));
        FUNC2(&lru_locks[i]);
    }
}