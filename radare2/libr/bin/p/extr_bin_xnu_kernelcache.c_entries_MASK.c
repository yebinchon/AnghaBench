#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_10__ {scalar_t__ entry; } ;
struct TYPE_9__ {TYPE_2__* o; } ;
struct TYPE_8__ {scalar_t__ bin_obj; } ;
struct TYPE_7__ {scalar_t__ pa2va_exec; TYPE_5__* mach0; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RKernelCacheObj ;
typedef  TYPE_2__ RBinObject ;
typedef  TYPE_3__ RBinFile ;
typedef  int /*<<< orphan*/  RBinAddr ;

/* Variables and functions */
 int /*<<< orphan*/  R_K_CONSTRUCTOR_TO_ENTRY ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC4(RBinFile *bf) {
	RList *ret;
	RBinObject *obj = bf ? bf->o : NULL;

	if (!obj || !obj->bin_obj || !(ret = FUNC3 (free))) {
		return NULL;
	}

	RKernelCacheObj *kobj = (RKernelCacheObj*) obj->bin_obj;
	ut64 entry_vaddr = kobj->mach0->entry;
	if (kobj->pa2va_exec <= entry_vaddr) {
		ut64 entry_paddr = entry_vaddr - kobj->pa2va_exec;
		RBinAddr *ba = FUNC0 (entry_paddr, entry_vaddr, 0);
		if (ba) {
			FUNC2 (ret, ba);
		}
	}

	FUNC1 (kobj, kobj->mach0, ret, 0, true, R_K_CONSTRUCTOR_TO_ENTRY, NULL);

	return ret;
}