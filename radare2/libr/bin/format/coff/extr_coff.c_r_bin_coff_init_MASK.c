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
struct r_bin_coff_obj {int verbose; int /*<<< orphan*/  size; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r_bin_coff_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct r_bin_coff_obj*) ; 
 int /*<<< orphan*/  FUNC3 (struct r_bin_coff_obj*) ; 
 int /*<<< orphan*/  FUNC4 (struct r_bin_coff_obj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct r_bin_coff_obj *obj, RBuffer *buf, bool verbose) {
	obj->b = FUNC5 (buf);
	obj->size = FUNC6 (buf);
	obj->verbose = verbose;
	if (!FUNC1 (obj)) {
		FUNC0 ("Warning: failed to init hdr\n");
		return false;
	}
	FUNC2 (obj);
	if (!FUNC3 (obj)) {
		FUNC0 ("Warning: failed to init section header\n");
		return false;
	}
	if (!FUNC4 (obj)) {
		FUNC0 ("Warning: failed to init symtable\n");
		return false;
	}
	return true;
}