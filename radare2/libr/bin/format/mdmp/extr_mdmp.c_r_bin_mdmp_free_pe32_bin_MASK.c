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
struct Pe32_r_bin_mdmp_pe_bin {TYPE_1__* bin; } ;
struct TYPE_2__ {int /*<<< orphan*/  kv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct Pe32_r_bin_mdmp_pe_bin*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *pe_bin_) {
	struct Pe32_r_bin_mdmp_pe_bin *pe_bin = pe_bin_;
	if (pe_bin) {
		FUNC2 (pe_bin->bin->kv);
		FUNC0 (pe_bin->bin);
		FUNC1 (pe_bin);
	}
}