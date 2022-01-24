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
struct r_bin_mz_obj_t {int /*<<< orphan*/  kv; int /*<<< orphan*/ * relocation_entries; int /*<<< orphan*/ * dos_extended_header; int /*<<< orphan*/ * dos_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r_bin_mz_obj_t*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(struct r_bin_mz_obj_t *bin) {
	bin->dos_header = NULL;
	bin->dos_extended_header = NULL;
	bin->relocation_entries = NULL;
	bin->kv = FUNC2 ();
	if (!FUNC1 (bin)) {
		FUNC0 ("Warning: File is not MZ\n");
		return false;
	}
	return true;
}