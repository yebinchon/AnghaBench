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
struct matrix4 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  draw_transform; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,int /*<<< orphan*/ *) ; 

void FUNC1(const obs_sceneitem_t *item,
				      struct matrix4 *transform)
{
	if (item)
		FUNC0(transform, &item->draw_transform);
}