#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct audio_cb_info {void* member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  audio_cb_mutex; int /*<<< orphan*/  audio_cb_list; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_source_audio_capture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct audio_cb_info*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(
	obs_source_t *source, obs_source_audio_capture_t callback, void *param)
{
	struct audio_cb_info info = {callback, param};

	if (!FUNC1(source,
			      "obs_source_remove_audio_capture_callback"))
		return;

	FUNC2(&source->audio_cb_mutex);
	FUNC0(source->audio_cb_list, &info);
	FUNC3(&source->audio_cb_mutex);
}