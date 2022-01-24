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
struct rename_flag_t {TYPE_1__* core; int /*<<< orphan*/  count; int /*<<< orphan*/  pfx; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  RFlagItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(RFlagItem *fi, void *user) {
	struct rename_flag_t *u = (struct rename_flag_t *)user;
	char *newName = FUNC2 ("%s%d", u->pfx, u->count++);
	if (!newName) {
		return false;
	}
	FUNC1 (u->core->flags, fi, newName);
	FUNC0 (newName);
	return true;
}