#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_5__ {int /*<<< orphan*/  range_box_y; int /*<<< orphan*/  range_box_x; } ;
typedef  TYPE_1__ RectBox ;
typedef  TYPE_2__ RangeBox ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC1(RectBox *rect_box, RangeBox *query)
{
	return FUNC0(&rect_box->range_box_x, &query->left) &&
		FUNC0(&rect_box->range_box_y, &query->right);
}