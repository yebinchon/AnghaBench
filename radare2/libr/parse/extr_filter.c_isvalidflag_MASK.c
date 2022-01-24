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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RFlagItem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC2(RFlagItem *flag) {
	if (flag) {
		if (FUNC1 (flag->name, "main") || FUNC1 (flag->name, "entry")) {
			return true;
		}
		if (FUNC0 (flag->name, '.')) {
			return true;
		}
	}
	return false;
}