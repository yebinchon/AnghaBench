#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  channels_mutex; int /*<<< orphan*/ ** channels; } ;
typedef  TYPE_1__ obs_view_t ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

obs_source_t *FUNC4(obs_view_t *view, uint32_t channel)
{
	obs_source_t *source;
	FUNC0(channel < MAX_CHANNELS);

	if (!view)
		return NULL;
	if (channel >= MAX_CHANNELS)
		return NULL;

	FUNC2(&view->channels_mutex);

	source = view->channels[channel];
	if (source)
		FUNC1(source);

	FUNC3(&view->channels_mutex);

	return source;
}