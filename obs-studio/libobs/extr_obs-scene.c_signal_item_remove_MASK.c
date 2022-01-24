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
typedef  int /*<<< orphan*/  uint8_t ;
struct obs_scene_item {int /*<<< orphan*/  parent; } ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

__attribute__((used)) static inline void FUNC3(struct obs_scene_item *item)
{
	struct calldata params;
	uint8_t stack[128];

	FUNC0(&params, stack, sizeof(stack));
	FUNC1(&params, "item", item);

	FUNC2(item->parent, "item_remove", &params);
}