#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ total_items; } ;
struct TYPE_3__ {scalar_t__ curr_items; scalar_t__ curr_bytes; } ;
typedef  int /*<<< orphan*/ * ADD_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC9 (int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 TYPE_2__ stats ; 
 TYPE_1__ stats_state ; 

__attribute__((used)) static bool FUNC11(const char *stat_type, int nkey, ADD_STAT add_stats, void *c) {
    bool ret = true;

    if (add_stats != NULL) {
        if (!stat_type) {
            /* prepare general statistics for the engine */
            FUNC1();
            FUNC0("bytes", "%llu", (unsigned long long)stats_state.curr_bytes);
            FUNC0("curr_items", "%llu", (unsigned long long)stats_state.curr_items);
            FUNC0("total_items", "%llu", (unsigned long long)stats.total_items);
            FUNC2();
            FUNC0("slab_global_page_pool", "%u", FUNC3(NULL));
            FUNC8(add_stats, c);
        } else if (FUNC9(nkey, stat_type, "items") == 0) {
            FUNC4(add_stats, c);
        } else if (FUNC9(nkey, stat_type, "slabs") == 0) {
            FUNC10(add_stats, c);
        } else if (FUNC9(nkey, stat_type, "sizes") == 0) {
            FUNC5(add_stats, c);
        } else if (FUNC9(nkey, stat_type, "sizes_enable") == 0) {
            FUNC7(add_stats, c);
        } else if (FUNC9(nkey, stat_type, "sizes_disable") == 0) {
            FUNC6(add_stats, c);
        } else {
            ret = false;
        }
    } else {
        ret = false;
    }

    return ret;
}