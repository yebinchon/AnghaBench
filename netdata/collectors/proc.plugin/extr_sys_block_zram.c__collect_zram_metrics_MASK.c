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
struct TYPE_5__ {int /*<<< orphan*/  st_alloc_efficiency; int /*<<< orphan*/  rd_alloc_efficiency; int /*<<< orphan*/  st_comp_ratio; int /*<<< orphan*/  rd_comp_ratio; int /*<<< orphan*/  st_savings; int /*<<< orphan*/  rd_original_size; int /*<<< orphan*/  rd_savings_size; int /*<<< orphan*/  st_usage; int /*<<< orphan*/  rd_metadata_size; int /*<<< orphan*/  rd_compr_data_size; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ ZRAM_DEVICE ;
struct TYPE_6__ {int compr_data_size; int mem_used_total; int orig_data_size; } ;
typedef  TYPE_2__ MM_STAT ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(char* name, ZRAM_DEVICE *d, int advance, DICTIONARY* dict) {
    MM_STAT mm;
    int value;
    if (FUNC6(FUNC2(d->file, &mm) < 0))
    {
        FUNC0(dict, name);
        return -1;
    }

    if (FUNC1(advance))
    {
        FUNC5(d->st_usage);
        FUNC5(d->st_savings);
        FUNC5(d->st_comp_ratio);
        FUNC5(d->st_alloc_efficiency);
    }
    // zram_usage
    FUNC3(d->st_usage, d->rd_compr_data_size, mm.compr_data_size);
    FUNC3(d->st_usage, d->rd_metadata_size, mm.mem_used_total - mm.compr_data_size);
    FUNC4(d->st_usage);
    // zram_savings
    FUNC3(d->st_savings, d->rd_savings_size, mm.compr_data_size - mm.orig_data_size);
    FUNC3(d->st_savings, d->rd_original_size, mm.orig_data_size);
    FUNC4(d->st_savings);
    // zram_ratio
    value = mm.compr_data_size == 0 ? 1 : mm.orig_data_size * 100 / mm.compr_data_size;
    FUNC3(d->st_comp_ratio, d->rd_comp_ratio, value);
    FUNC4(d->st_comp_ratio);
    // zram_efficiency
    value = mm.mem_used_total == 0 ? 100 : (mm.compr_data_size * 1000000 / mm.mem_used_total);
    FUNC3(d->st_alloc_efficiency, d->rd_alloc_efficiency, value);
    FUNC4(d->st_alloc_efficiency);
    return 0;
}