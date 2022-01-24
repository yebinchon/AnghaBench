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
struct obs_core_audio {int /*<<< orphan*/  monitoring_mutex; int /*<<< orphan*/  monitoring_device_id; int /*<<< orphan*/  monitoring_device_name; int /*<<< orphan*/  monitors; int /*<<< orphan*/  root_nodes; int /*<<< orphan*/  render_order; int /*<<< orphan*/  buffered_timestamps; scalar_t__ audio; } ;
struct TYPE_2__ {struct obs_core_audio audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_core_audio*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct obs_core_audio *audio = &obs->audio;
	if (audio->audio)
		FUNC0(audio->audio);

	FUNC2(&audio->buffered_timestamps);
	FUNC3(audio->render_order);
	FUNC3(audio->root_nodes);

	FUNC3(audio->monitors);
	FUNC1(audio->monitoring_device_name);
	FUNC1(audio->monitoring_device_id);
	FUNC5(&audio->monitoring_mutex);

	FUNC4(audio, 0, sizeof(struct obs_core_audio));
}