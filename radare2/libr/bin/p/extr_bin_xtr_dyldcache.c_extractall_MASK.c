#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int file_count; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RBinXtrData ;
typedef  int /*<<< orphan*/  RBin ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  (*) (TYPE_1__*)) ; 

__attribute__((used)) static RList * FUNC4(RBin *bin) {
	RList *result = NULL;
	int nlib, i = 0;
	RBinXtrData *data = FUNC0 (bin, i);
	if (!data) {
		return result;
	}
	// XXX - how do we validate a valid nlib?
	nlib = data->file_count;
	result = FUNC3 (r_bin_xtrdata_free);
	if (!result) {
		FUNC1 (data);
		return NULL;
	}
	FUNC2 (result, data);
	for (i = 1; data && i < nlib; i++) {
		data = FUNC0 (bin, i);
		FUNC2 (result, data);
	}
	return result;
}