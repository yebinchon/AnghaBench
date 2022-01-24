#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  defer_update; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(obs_sceneitem_t *item)
{
	if (!FUNC1(item, "obs_sceneitem_defer_update_end"))
		return;

	if (FUNC2(&item->defer_update) == 0)
		FUNC0(item);
}