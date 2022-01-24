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
struct obs_scene {int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  video_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct obs_scene *scene = data;

	FUNC2(scene);

	FUNC1(&scene->video_mutex);
	FUNC1(&scene->audio_mutex);
	FUNC0(scene);
}