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
typedef  int /*<<< orphan*/  RBinAddr ;

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC3(RBinFile *bf) {
	RBinAddr *ptr = NULL;
	RList *res = NULL;
	if (!(res = FUNC2 (free))) {
		return NULL;
	}
	ptr = FUNC0 (bf->o->bin_obj);
	if (ptr) {
		FUNC1 (res, ptr);
	}
	return res;
}