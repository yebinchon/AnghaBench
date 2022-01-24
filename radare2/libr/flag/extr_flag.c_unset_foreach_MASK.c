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
struct unset_foreach_t {int /*<<< orphan*/  n; int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  RFlagItem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(RFlagItem *fi, void *user) {
	struct unset_foreach_t *u = (struct unset_foreach_t *)user;
	if (FUNC0 (u->f, fi)) {
		return true;
	}
	FUNC1 (u->f, fi);
	u->n++;
	return true;
}