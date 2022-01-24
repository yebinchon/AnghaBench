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
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_4__ {TYPE_2__ spaces; } ;
typedef  TYPE_1__ RFlag ;

/* Variables and functions */
 int /*<<< orphan*/  R_SPACE_EVENT_COUNT ; 
 int /*<<< orphan*/  R_SPACE_EVENT_UNSET ; 
 int /*<<< orphan*/  count_flags_in_space ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  unset_flagspace ; 

__attribute__((used)) static void FUNC2(RFlag *f) {
	FUNC1 (&f->spaces, "fs");
	FUNC0 (f->spaces.event, R_SPACE_EVENT_COUNT, count_flags_in_space, NULL);
	FUNC0 (f->spaces.event, R_SPACE_EVENT_UNSET, unset_flagspace, NULL);
}