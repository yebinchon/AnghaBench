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
struct TYPE_3__ {int outer_is_left; int /*<<< orphan*/  right_relids; int /*<<< orphan*/  left_relids; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  int /*<<< orphan*/  Relids ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC1(RestrictInfo *rinfo, Relids outerrelids,
						Relids innerrelids)
{
	if (FUNC0(rinfo->left_relids, outerrelids) &&
		FUNC0(rinfo->right_relids, innerrelids))
	{
		/* lefthand side is outer */
		rinfo->outer_is_left = true;
		return true;
	}
	else if (FUNC0(rinfo->left_relids, innerrelids) &&
			 FUNC0(rinfo->right_relids, outerrelids))
	{
		/* righthand side is outer */
		rinfo->outer_is_left = false;
		return true;
	}
	return false;				/* no good for these input relations */
}