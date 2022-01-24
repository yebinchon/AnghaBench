#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct r_bin_bflt_obj {int dummy; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_2__ RBinFile ;
typedef  int /*<<< orphan*/  RBinAddr ;

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC0 (struct r_bin_bflt_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC4(RBinFile *bf) {
	struct r_bin_bflt_obj *obj = (struct r_bin_bflt_obj *) bf->o->bin_obj;
	RList *ret;
	RBinAddr *ptr;

	if (!(ret = FUNC3 (free))) {
		return NULL;
	}
	ptr = FUNC0 (obj);
	if (!ptr) {
		FUNC2 (ret);
		return NULL;
	}
	FUNC1 (ret, ptr);
	return ret;
}