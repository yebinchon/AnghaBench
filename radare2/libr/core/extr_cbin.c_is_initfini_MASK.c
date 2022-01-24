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
struct TYPE_3__ {int type; } ;
typedef  TYPE_1__ RBinAddr ;

/* Variables and functions */
#define  R_BIN_ENTRY_TYPE_FINI 130 
#define  R_BIN_ENTRY_TYPE_INIT 129 
#define  R_BIN_ENTRY_TYPE_PREINIT 128 

__attribute__((used)) static inline bool FUNC0(RBinAddr *entry) {
	switch (entry->type) {
	case R_BIN_ENTRY_TYPE_INIT:
	case R_BIN_ENTRY_TYPE_FINI:
	case R_BIN_ENTRY_TYPE_PREINIT:
		return true;
	default:
		return false;
	}
}