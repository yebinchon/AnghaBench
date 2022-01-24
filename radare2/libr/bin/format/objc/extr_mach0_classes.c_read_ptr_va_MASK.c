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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int ut32 ;
typedef  scalar_t__ mach0_ut ;
typedef  int /*<<< orphan*/  RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(RBinFile *bf, ut64 vaddr, mach0_ut *out) {
	FUNC0 (bf, false);
	ut32 offset = 0, left = 0;
	mach0_ut paddr = FUNC2 (vaddr, &offset, &left, bf);
	if (paddr == 0 || left < sizeof (mach0_ut)) {
		return false;
	}
	return FUNC1 (bf, paddr, out);
}