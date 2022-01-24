#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct obs_source {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  obs_scene_t ;

/* Variables and functions */
 struct obs_source* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline obs_scene_t *FUNC1(const char *id, const char *name)
{
	struct obs_source *source = FUNC0(id, name, NULL);
	return source->context.data;
}