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
struct TYPE_3__ {int /*<<< orphan*/  attrs; int /*<<< orphan*/  color; } ;
typedef  TYPE_1__ RConsCanvas ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC1(RConsCanvas *c, int loc) {
	if (!c->color) {
		return NULL;
	}
	return FUNC0 (c->attrs, loc, NULL);
}