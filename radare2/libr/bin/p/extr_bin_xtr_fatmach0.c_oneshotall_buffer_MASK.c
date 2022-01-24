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
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_1__ RBinXtrData ;
typedef  int /*<<< orphan*/  RBin ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  (*) (TYPE_1__*)) ; 

__attribute__((used)) static RList * FUNC4(RBin *bin, RBuffer *b) {
	RBinXtrData *data = FUNC0 (bin, b, 0);
	if (data) {
		// XXX - how do we validate a valid narch?
		int  narch = data->file_count;
		RList *res = FUNC3 (r_bin_xtrdata_free);
		if (!res) {
			FUNC1 (data);
			return NULL;
		}
		FUNC2 (res, data);
		int i = 0;
		for (i = 1; data && i < narch; i++) {
			data = FUNC0 (bin, b, i);
			FUNC2 (res, data);
		}
		return res;
	}
	return NULL;
}