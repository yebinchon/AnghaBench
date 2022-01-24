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
struct obs_scene_item {int /*<<< orphan*/  is_group; int /*<<< orphan*/  crop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct obs_scene_item const*) ; 
 scalar_t__ FUNC2 (struct obs_scene_item const*) ; 

__attribute__((used)) static inline bool FUNC3(const struct obs_scene_item *item)
{
	return FUNC0(&item->crop) || FUNC2(item) ||
	       (FUNC1(item) && !item->is_group);
}