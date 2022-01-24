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
typedef  size_t uint32_t ;
struct obs_view {int /*<<< orphan*/  channels_mutex; struct obs_source** channels; } ;
struct obs_source {int dummy; } ;
struct calldata {int /*<<< orphan*/  member_0; } ;
typedef  struct obs_source obs_source_t ;
struct TYPE_3__ {struct obs_view main_view; } ;
struct TYPE_4__ {int /*<<< orphan*/  signals; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAIN_VIEW ; 
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,struct obs_source**) ; 
 int /*<<< orphan*/  FUNC3 (struct calldata*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct calldata*,char*,struct obs_source*) ; 
 TYPE_2__* obs ; 
 int /*<<< orphan*/  FUNC5 (struct obs_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC7 (struct obs_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC12(uint32_t channel, obs_source_t *source)
{
	FUNC0(channel < MAX_CHANNELS);

	if (!obs)
		return;
	if (channel >= MAX_CHANNELS)
		return;

	struct obs_source *prev_source;
	struct obs_view *view = &obs->data.main_view;
	struct calldata params = {0};

	FUNC9(&view->channels_mutex);

	FUNC6(source);

	prev_source = view->channels[channel];

	FUNC3(&params, "channel", channel);
	FUNC4(&params, "prev_source", prev_source);
	FUNC4(&params, "source", source);
	FUNC11(obs->signals, "channel_change", &params);
	FUNC2(&params, "source", &source);
	FUNC1(&params);

	view->channels[channel] = source;

	FUNC10(&view->channels_mutex);

	if (source)
		FUNC5(source, MAIN_VIEW);

	if (prev_source) {
		FUNC7(prev_source, MAIN_VIEW);
		FUNC8(prev_source);
	}
}