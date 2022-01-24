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
struct r_bin_mz_reloc_t {scalar_t__ vaddr; int last; int /*<<< orphan*/  paddr; } ;
struct r_bin_mz_obj_t {scalar_t__ load_module_size; TYPE_2__* relocation_entries; TYPE_1__* dos_header; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  segment; } ;
struct TYPE_3__ {int num_relocs; } ;
typedef  TYPE_2__ MZ_image_relocation_entry ;

/* Variables and functions */
 struct r_bin_mz_reloc_t* FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct r_bin_mz_obj_t const*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct r_bin_mz_reloc_t *FUNC4 (const struct r_bin_mz_obj_t *bin) {
	int i, j;
	const int num_relocs = bin->dos_header->num_relocs;
	const MZ_image_relocation_entry *const rel_entry = bin->relocation_entries;

	struct r_bin_mz_reloc_t *relocs = FUNC0 (num_relocs + 1, sizeof (*relocs));
	if (!relocs) {
		FUNC1 ("Error: calloc (struct r_bin_mz_reloc_t)\n");
		return NULL;
	}
	for (i = 0, j = 0; i < num_relocs; i++) {
		relocs[j].vaddr = FUNC3 (rel_entry[i].segment,
			rel_entry[i].offset);
		relocs[j].paddr = FUNC2 (bin, relocs[j].vaddr);

		/* Add only relocations which resides inside dos executable */
		if (relocs[j].vaddr < bin->load_module_size) {
			j++;
		}
	}
	relocs[j].last = 1;

	return relocs;
}