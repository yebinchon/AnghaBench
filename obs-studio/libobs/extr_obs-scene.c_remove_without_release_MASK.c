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
struct obs_scene_item {int removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_scene_item*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene_item*) ; 

__attribute__((used)) static inline void FUNC3(struct obs_scene_item *item)
{
	item->removed = true;
	FUNC1(item, false);
	FUNC2(item);
	FUNC0(item);
}