#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; scalar_t__ audio_mix; } ;
struct obs_source {float user_volume; float volume; float balance; int audio_active; int deinterlace_top_first; int audio_mixers; int /*<<< orphan*/  private_settings; TYPE_2__* control; TYPE_1__ info; int /*<<< orphan*/  async_mutex; int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  audio_cb_mutex; int /*<<< orphan*/  audio_actions_mutex; int /*<<< orphan*/  audio_buf_mutex; int /*<<< orphan*/  filter_mutex; scalar_t__ sync_offset; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  obs_weak_source_t ;
struct TYPE_4__ {struct obs_source* source; } ;

/* Variables and functions */
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*) ; 
 TYPE_2__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct obs_source*) ; 
 scalar_t__ FUNC4 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct obs_source*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct obs_source *source)
{
	pthread_mutexattr_t attr;

	source->user_volume = 1.0f;
	source->volume = 1.0f;
	source->sync_offset = 0;
	source->balance = 0.5f;
	source->audio_active = true;
	FUNC8(&source->filter_mutex);
	FUNC8(&source->async_mutex);
	FUNC8(&source->audio_mutex);
	FUNC8(&source->audio_buf_mutex);
	FUNC8(&source->audio_cb_mutex);

	if (FUNC9(&attr) != 0)
		return false;
	if (FUNC10(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return false;
	if (FUNC7(&source->filter_mutex, &attr) != 0)
		return false;
	if (FUNC7(&source->audio_buf_mutex, NULL) != 0)
		return false;
	if (FUNC7(&source->audio_actions_mutex, NULL) != 0)
		return false;
	if (FUNC7(&source->audio_cb_mutex, NULL) != 0)
		return false;
	if (FUNC7(&source->audio_mutex, NULL) != 0)
		return false;
	if (FUNC7(&source->async_mutex, NULL) != 0)
		return false;

	if (FUNC3(source) || FUNC4(source))
		FUNC1(source);
	if (source->info.audio_mix)
		FUNC0(source);

	if (source->info.type == OBS_SOURCE_TYPE_TRANSITION) {
		if (!FUNC6(source))
			return false;
	}

	source->control = FUNC2(sizeof(obs_weak_source_t));
	source->deinterlace_top_first = true;
	source->control->source = source;
	source->audio_mixers = 0xFF;

	source->private_settings = FUNC5();
	return true;
}