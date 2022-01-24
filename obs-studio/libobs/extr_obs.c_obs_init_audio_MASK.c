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
struct obs_core_audio {float user_volume; int /*<<< orphan*/  audio; void* monitoring_device_id; void* monitoring_device_name; int /*<<< orphan*/  monitoring_mutex; } ;
struct audio_output_info {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_2__ {struct obs_core_audio audio; } ;

/* Variables and functions */
 int AUDIO_OUTPUT_INVALIDPARAM ; 
 int AUDIO_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct audio_output_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (char*) ; 
 TYPE_1__* obs ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct audio_output_info *ai)
{
	struct obs_core_audio *audio = &obs->audio;
	int errorcode;

	pthread_mutexattr_t attr;

	FUNC4(&audio->monitoring_mutex);

	if (FUNC5(&attr) != 0)
		return false;
	if (FUNC6(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return false;
	if (FUNC3(&audio->monitoring_mutex, &attr) != 0)
		return false;

	audio->user_volume = 1.0f;

	audio->monitoring_device_name = FUNC2("Default");
	audio->monitoring_device_id = FUNC2("default");

	errorcode = FUNC0(&audio->audio, ai);
	if (errorcode == AUDIO_OUTPUT_SUCCESS)
		return true;
	else if (errorcode == AUDIO_OUTPUT_INVALIDPARAM)
		FUNC1(LOG_ERROR, "Invalid audio parameters specified");
	else
		FUNC1(LOG_ERROR, "Could not open audio output");

	return false;
}