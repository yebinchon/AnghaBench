#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RFlagsAtOffset ;
typedef  TYPE_2__ RFlagItem ;
typedef  int /*<<< orphan*/  RFlag ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static bool FUNC3(RFlag *f, RFlagItem *item, ut64 newoff, bool is_new, bool force) {
	if (item->offset != newoff || force) {
		if (!is_new) {
			FUNC2 (f, item);
		}
		item->offset = newoff;

		RFlagsAtOffset *flagsAtOffset = FUNC0 (f, newoff);
		if (!flagsAtOffset) {
			return false;
		}

		FUNC1 (flagsAtOffset->flags, item);
		return true;
	}

	return false;
}