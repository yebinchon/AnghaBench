#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  procfile ;
struct TYPE_3__ {void* pages_compacted; void* same_pages; void* mem_used_max; void* mem_limit; void* mem_used_total; void* compr_data_size; void* orig_data_size; } ;
typedef  TYPE_1__ MM_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(procfile *ff, MM_STAT *stats) {
    ff = FUNC3(ff);
    if (!ff)
        return -1;
    if (FUNC1(ff) < 1) {
        FUNC0(ff);
        return -1;
    }
    if (FUNC2(ff, 0) < 7) {
        FUNC0(ff);
        return -1;
    }

    stats->orig_data_size = FUNC5(FUNC4(ff, 0));
    stats->compr_data_size = FUNC5(FUNC4(ff, 1));
    stats->mem_used_total = FUNC5(FUNC4(ff, 2));
    stats->mem_limit = FUNC5(FUNC4(ff, 3));
    stats->mem_used_max = FUNC5(FUNC4(ff, 4));
    stats->same_pages = FUNC5(FUNC4(ff, 5));
    stats->pages_compacted = FUNC5(FUNC4(ff, 6));
    return 0;
}