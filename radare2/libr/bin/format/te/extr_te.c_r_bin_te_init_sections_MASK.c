#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct r_bin_te_obj_t {int size; scalar_t__ section_header; int /*<<< orphan*/  b; TYPE_1__* header; } ;
struct TYPE_2__ {int NumberOfSections; } ;
typedef  int /*<<< orphan*/  TE_image_section_header ;
typedef  int /*<<< orphan*/  TE_image_file_header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct r_bin_te_obj_t* bin) {
	int sections_size = sizeof(TE_image_section_header) * bin->header->NumberOfSections;
	if (sections_size > bin->size) {
		FUNC0 ("Invalid NumberOfSections value\n");
		return false;
	}
	if (!(bin->section_header = FUNC1 (sections_size))) {
		FUNC2 ("malloc (sections headers)");
		return false;
	}
	if (FUNC3 (bin->b, sizeof(TE_image_file_header),
				(ut8*)bin->section_header, sections_size) == -1) {
		FUNC0 ("Error: read (sections headers)\n");
		return false;
	}
	return true;
}