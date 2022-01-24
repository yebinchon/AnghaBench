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
struct obs_core_data {int valid; int /*<<< orphan*/  private_data; int /*<<< orphan*/  tick_callbacks; int /*<<< orphan*/  draw_callbacks; int /*<<< orphan*/  draw_callbacks_mutex; int /*<<< orphan*/  services_mutex; int /*<<< orphan*/  encoders_mutex; int /*<<< orphan*/  outputs_mutex; int /*<<< orphan*/  displays_mutex; int /*<<< orphan*/  audio_sources_mutex; int /*<<< orphan*/  sources_mutex; int /*<<< orphan*/  main_view; } ;
struct TYPE_2__ {struct obs_core_data data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  display ; 
 int /*<<< orphan*/  encoder ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  output ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  service ; 
 int /*<<< orphan*/  source ; 

__attribute__((used)) static void FUNC6(void)
{
	struct obs_core_data *data = &obs->data;

	data->valid = false;

	FUNC4(&data->main_view);

	FUNC1(LOG_INFO, "Freeing OBS context data");

	FUNC0(source);
	FUNC0(output);
	FUNC0(encoder);
	FUNC0(display);
	FUNC0(service);

	FUNC5(&data->sources_mutex);
	FUNC5(&data->audio_sources_mutex);
	FUNC5(&data->displays_mutex);
	FUNC5(&data->outputs_mutex);
	FUNC5(&data->encoders_mutex);
	FUNC5(&data->services_mutex);
	FUNC5(&data->draw_callbacks_mutex);
	FUNC2(data->draw_callbacks);
	FUNC2(data->tick_callbacks);
	FUNC3(data->private_data);
}