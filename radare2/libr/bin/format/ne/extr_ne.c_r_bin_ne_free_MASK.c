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
struct TYPE_3__ {int /*<<< orphan*/  segment_entries; int /*<<< orphan*/  resident_name_table; int /*<<< orphan*/  ne_header; int /*<<< orphan*/  entry_table; int /*<<< orphan*/  resources; } ;
typedef  TYPE_1__ r_bin_ne_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(r_bin_ne_obj_t *bin) {
	// r_list_free (bin->imports); // double free
	FUNC1 (bin->resources);
	FUNC0 (bin->entry_table);
	FUNC0 (bin->ne_header);
	FUNC0 (bin->resident_name_table);
	FUNC0 (bin->segment_entries);
}