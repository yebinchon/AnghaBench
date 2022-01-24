#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  by_off; } ;
struct TYPE_11__ {int /*<<< orphan*/  offset; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RFlagsAtOffset ;
typedef  TYPE_2__ RFlagItem ;
typedef  TYPE_3__ RFlag ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(RFlag *f, RFlagItem *item) {
	FUNC3 (f && item);
	RFlagsAtOffset *flags = FUNC0 (f, item->offset, 0);
	if (flags) {
		FUNC1 (flags->flags, item);
		if (FUNC2 (flags->flags)) {
			FUNC4 (f->by_off, flags);
		}
	}
}