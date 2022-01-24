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
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int /*<<< orphan*/  bin_obj; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_2__ RBinFile ;

/* Variables and functions */
 int RBinAddr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int addr ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC6(RBinFile *bf) {
	RList *ret;
	RBinAddr *addr;

	if (!(ret = FUNC5 (free))) {
		return NULL;
	}
	if (!(addr = FUNC1 (RBinAddr))) {
		FUNC4 (ret);
		return NULL;
	}
	if (!FUNC2 (bf->o->bin_obj, addr)) {
		FUNC0 (addr);
	} else {
		FUNC3 (ret, addr);
	}
	return ret;
}