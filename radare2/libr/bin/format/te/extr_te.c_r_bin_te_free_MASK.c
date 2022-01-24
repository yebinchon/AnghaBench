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
struct r_bin_te_obj_t {int /*<<< orphan*/  b; struct r_bin_te_obj_t* section_header; struct r_bin_te_obj_t* header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r_bin_te_obj_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void* FUNC2(struct r_bin_te_obj_t* bin) {
	if (!bin) {
		return NULL;
	}
	FUNC0 (bin->header);
	FUNC0 (bin->section_header);
	FUNC1 (bin->b);
	FUNC0 (bin);
	return NULL;
}