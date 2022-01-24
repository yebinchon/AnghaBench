#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_4__ {int selected; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,struct calldata*) ; 

void FUNC3(obs_sceneitem_t *item, bool select)
{
	struct calldata params;
	uint8_t stack[128];
	const char *command = select ? "item_select" : "item_deselect";

	if (!item || item->selected == select || !item->parent)
		return;

	item->selected = select;

	FUNC0(&params, stack, sizeof(stack));
	FUNC1(&params, "item", item);

	FUNC2(item->parent, command, &params);
}