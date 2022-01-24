#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct ht_rel_t {int k; } ;
struct TYPE_3__ {int rva; } ;
typedef  TYPE_1__ RBinElfSection ;
typedef  int /*<<< orphan*/  ELFOBJ ;

/* Variables and functions */
 int REL_TYPE ; 
#define  R_AARCH64_JUMP_SLOT 129 
#define  R_ARM_JUMP_SLOT 128 
 int UT32_MAX ; 
 int UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static ut64 FUNC1(ELFOBJ *bin, struct ht_rel_t *rel, RBinElfSection *plt_section) {
	if (!plt_section) {
		return UT32_MAX;
	}
	ut64 plt_addr = plt_section->rva;
	switch (REL_TYPE) {
	case R_ARM_JUMP_SLOT: {
		plt_addr += rel->k * 12 + 20;
		// thumb symbol
		if (plt_addr & 1) {
			plt_addr--;
		}
		return plt_addr;
	}
	case R_AARCH64_JUMP_SLOT:
		return plt_addr + rel->k * 16 + 32;
	default:
		FUNC0 ("Unsupported relocation type for imports %d\n", REL_TYPE);
		return UT64_MAX;
	}
}