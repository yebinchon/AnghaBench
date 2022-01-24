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
struct obs_core_data {int valid; int /*<<< orphan*/  private_data; int /*<<< orphan*/  main_view; int /*<<< orphan*/  draw_callbacks_mutex; int /*<<< orphan*/  services_mutex; int /*<<< orphan*/  encoders_mutex; int /*<<< orphan*/  outputs_mutex; int /*<<< orphan*/  displays_mutex; int /*<<< orphan*/  audio_sources_mutex; int /*<<< orphan*/  sources_mutex; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_2__ {struct obs_core_data data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(void)
{
	struct obs_core_data *data = &obs->data;
	pthread_mutexattr_t attr;

	FUNC0(data != NULL);

	FUNC4(&obs->data.displays_mutex);
	FUNC4(&obs->data.draw_callbacks_mutex);

	if (FUNC6(&attr) != 0)
		return false;
	if (FUNC7(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		goto fail;
	if (FUNC3(&data->sources_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&data->audio_sources_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&data->displays_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&data->outputs_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&data->encoders_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&data->services_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&obs->data.draw_callbacks_mutex, &attr) != 0)
		goto fail;
	if (!FUNC2(&data->main_view))
		goto fail;

	data->private_data = FUNC1();
	data->valid = true;

fail:
	FUNC5(&attr);
	return data->valid;
}